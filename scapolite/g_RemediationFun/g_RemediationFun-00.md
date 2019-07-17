---
scapolite:
    class: group
    version: '0.51'
id: remediation_functions
id_namespace: org.ssgproject.RHEL-8
title: Remediation functions used by the SCAP Security Guide Project
description: <see below>
values:
  - id: function_fix_audit_syscall_rule
    id_namespace: org.ssgproject.RHEL-8
    title: Remediation function fix\_audit\_syscall\_rule
    description: |
        Shared
        bash remediation function. Not intended to be changed by tailoring.
    type: string
    operator: equals
    definitions:
      - value: |+
            # Function to fix syscall audit rule for given system call. It is
            # based on example audit syscall rule definitions as outlined in
            # /usr/share/doc/audit-2.3.7/stig.rules file provided with the audit
            # package. It will combine multiple system calls belonging to the same
            # syscall group into one audit rule (rather than to create audit rule per
            # different system call) to avoid audit infrastructure performance penalty
            # in the case of 'one-audit-rule-definition-per-one-system-call'. See:
            #
            #   https://www.redhat.com/archives/linux-audit/2014-November/msg00009.html
            #
            # for further details.
            #
            # Expects five arguments (each of them is required) in the form of:
            # * audit tool				tool used to load audit rules,
            # 					either 'auditctl', or 'augenrules
            # * audit rules' pattern		audit rule skeleton for same syscall
            # * syscall group			greatest common string this rule shares
            # 					with other rules from the same group
            # * architecture			architecture this rule is intended for
            # * full form of new rule to add	expected full form of audit rule as to be
            # 					added into audit.rules file
            #
            # Note: The 2-th up to 4-th arguments are used to determine how many existing
            # audit rules will be inspected for resemblance with the new audit rule
            # (5-th argument) the function is going to add. The rule's similarity check
            # is performed to optimize audit.rules definition (merge syscalls of the same
            # group into one rule) to avoid the "single-syscall-per-audit-rule" performance
            # penalty.
            #
            # Example call:
            #
            #	See e.g. 'audit_rules_file_deletion_events.sh' remediation script
            #
            function fix_audit_syscall_rule {

            # Load function arguments into local variables
            local tool="$1"
            local pattern="$2"
            local group="$3"
            local arch="$4"
            local full_rule="$5"

            # Check sanity of the input
            if [ $# -ne "5" ]
            then
            	echo "Usage: fix_audit_syscall_rule 'tool' 'pattern' 'group' 'arch' 'full rule'"
            	echo "Aborting."
            	exit 1
            fi

            # Create a list of audit *.rules files that should be inspected for presence and correctness
            # of a particular audit rule. The scheme is as follows:
            #
            # -----------------------------------------------------------------------------------------
            #  Tool used to load audit rules | Rule already defined  |  Audit rules file to inspect    |
            # -----------------------------------------------------------------------------------------
            #        auditctl                |     Doesn't matter    |  /etc/audit/audit.rules         |
            # -----------------------------------------------------------------------------------------
            #        augenrules              |          Yes          |  /etc/audit/rules.d/*.rules     |
            #        augenrules              |          No           |  /etc/audit/rules.d/$key.rules  |
            # -----------------------------------------------------------------------------------------
            #
            declare -a files_to_inspect

            retval=0

            # First check sanity of the specified audit tool
            if [ "$tool" != 'auditctl' ] && [ "$tool" != 'augenrules' ]
            then
            	echo "Unknown audit rules loading tool: $1. Aborting."
            	echo "Use either 'auditctl' or 'augenrules'!"
            	return 1
            # If audit tool is 'auditctl', then add '/etc/audit/audit.rules'
            # file to the list of files to be inspected
            elif [ "$tool" == 'auditctl' ]
            then
            	files_to_inspect=("${files_to_inspect[@]}" '/etc/audit/audit.rules' )
            # If audit tool is 'augenrules', then check if the audit rule is defined
            # If rule is defined, add '/etc/audit/rules.d/*.rules' to the list for inspection
            # If rule isn't defined yet, add '/etc/audit/rules.d/$key.rules' to the list for inspection
            elif [ "$tool" == 'augenrules' ]
            then
            	# Extract audit $key from audit rule so we can use it later
            	key=$(expr "$full_rule" : '.*-k[[:space:]]\([^[:space:]]\+\)' '|' "$full_rule" : '.*-F[[:space:]]key=\([^[:space:]]\+\)')
            	IFS_BKP="$IFS"
            	# Check if particular audit rule is already defined
            	IFS=$'\n'
            	matches=($(sed -s -n -e "\;${pattern};!d" -e "/${arch}/!d" -e "/${group}/!d;F" /etc/audit/rules.d/*.rules))
            	if [ $? -ne 0 ]
            	then
            		retval=1
            	fi
            	# Reset IFS back to default
            	IFS="$IFS_BKP"
            	for match in "${matches[@]}"
            	do
            		files_to_inspect=("${files_to_inspect[@]}" "${match}")
            	done
            	# Case when particular rule isn't defined in /etc/audit/rules.d/*.rules yet
            	if [ ${#files_to_inspect[@]} -eq "0" ]
            	then
            		files_to_inspect="/etc/audit/rules.d/$key.rules"
            		if [ ! -e "$files_to_inspect" ]
            		then
            			touch "$files_to_inspect"
            			chmod 0640 "$files_to_inspect"
            		fi
            	fi
            fi

            #
            # Indicator that we want to append $full_rule into $audit_file by default
            local append_expected_rule=0

            for audit_file in "${files_to_inspect[@]}"
            do

            	IFS_BKP="$IFS"
            	# Filter existing $audit_file rules' definitions to select those that:
            	# * follow the rule pattern, and
            	# * meet the hardware architecture requirement, and
            	# * are current syscall group specific
            	IFS=$'\n'
            	existing_rules=($(sed -e "\;${pattern};!d" -e "/${arch}/!d" -e "/${group}/!d"  "$audit_file"))
            	if [ $? -ne 0 ]
            	then
            		retval=1
            	fi
            	# Reset IFS back to default
            	IFS="$IFS_BKP"

            	# Process rules found case-by-case
            	for rule in "${existing_rules[@]}"
            	do
            		# Found rule is for same arch & key, but differs (e.g. in count of -S arguments)
            		if [ "${rule}" != "${full_rule}" ]
            		then
            			# If so, isolate just '(-S \w)+' substring of that rule
            			rule_syscalls=$(echo $rule | grep -o -P '(-S \w+ )+')
            			# Check if list of '-S syscall' arguments of that rule is subset
            			# of '-S syscall' list of expected $full_rule
            			if grep -q -- "$rule_syscalls" <<< "$full_rule"
            			then
            				# Rule is covered (i.e. the list of -S syscalls for this rule is
            				# subset of -S syscalls of $full_rule => existing rule can be deleted
            				# Thus delete the rule from audit.rules & our array
            				sed -i -e "\;${rule};d" "$audit_file"
            				if [ $? -ne 0 ]
            				then
            					retval=1
            				fi
            				existing_rules=("${existing_rules[@]//$rule/}")
            			else
            				# Rule isn't covered by $full_rule - it besides -S syscall arguments
            				# for this group contains also -S syscall arguments for other syscall
            				# group. Example: '-S lchown -S fchmod -S fchownat' => group='chown'
            				# since 'lchown' & 'fchownat' share 'chown' substring
            				# Therefore:
            				# * 1) delete the original rule from audit.rules
            				# (original '-S lchown -S fchmod -S fchownat' rule would be deleted)
            				# * 2) delete the -S syscall arguments for this syscall group, but
            				# keep those not belonging to this syscall group
            				# (original '-S lchown -S fchmod -S fchownat' would become '-S fchmod'
            				# * 3) append the modified (filtered) rule again into audit.rules
            				# if the same rule not already present
            				#
            				# 1) Delete the original rule
            				sed -i -e "\;${rule};d" "$audit_file"
            				if [ $? -ne 0 ]
            				then
            					retval=1
            				fi
            				IFS_BKP="$IFS"
            				# 2) Delete syscalls for this group, but keep those from other groups
            				# Convert current rule syscall's string into array splitting by '-S' delimiter
            				IFS=$'-S'
            				read -a rule_syscalls_as_array <<< "$rule_syscalls"
            				# Reset IFS back to default
            				IFS="$IFS_BKP"
            				# Declare new empty string to hold '-S syscall' arguments from other groups
            				new_syscalls_for_rule=''
            				# Walk through existing '-S syscall' arguments
            				for syscall_arg in "${rule_syscalls_as_array[@]}"
            				do
            					# Skip empty $syscall_arg values
            					if [ "$syscall_arg" == '' ]
            					then
            						continue
            					fi
            					# If the '-S syscall' doesn't belong to current group add it to the new list
            					# (together with adding '-S' delimiter back for each of such item found)
            					if grep -q -v -- "$group" <<< "$syscall_arg"
            					then
            						new_syscalls_for_rule="$new_syscalls_for_rule -S $syscall_arg"
            					fi
            				done
            				# Replace original '-S syscall' list with the new one for this rule
            				updated_rule=${rule//$rule_syscalls/$new_syscalls_for_rule}
            				# Squeeze repeated whitespace characters in rule definition (if any) into one
            				updated_rule=$(echo "$updated_rule" | tr -s '[:space:]')
            				# 3) Append the modified / filtered rule again into audit.rules
            				#    (but only in case it's not present yet to prevent duplicate definitions)
            				if ! grep -q -- "$updated_rule" "$audit_file"
            				then
            					echo "$updated_rule" >> "$audit_file"
            				fi
            			fi
            		else
            			# $audit_file already contains the expected rule form for this
            			# architecture & key => don't insert it second time
            			append_expected_rule=1
            		fi
            	done

            	# We deleted all rules that were subset of the expected one for this arch & key.
            	# Also isolated rules containing system calls not from this system calls group.
            	# Now append the expected rule if it's not present in $audit_file yet
            	if [[ ${append_expected_rule} -eq "0" ]]
            	then
            		echo "$full_rule" >> "$audit_file"
            	fi
            done

            return $retval

            }

  - id: function_die
    id_namespace: org.ssgproject.RHEL-8
    title: Remediation function die
    description: |
        Shared
        bash remediation function. Not intended to be changed by tailoring.
    type: string
    operator: equals
    definitions:
      - value: |+
            # Print a message to stderr and exit the shell
            # $1: The message to print.
            # $2: The error code (optional, default is 1)
            function die {
            	local _message="$1" _rc="${2:-1}"
            	printf '%s\n' "$_message" >&2
            	exit "$_rc"
            }

  - id: function_populate
    id_namespace: org.ssgproject.RHEL-8
    title: Remediation function populate
    description: |
        Shared
        bash remediation function. Not intended to be changed by tailoring.
    type: string
    operator: equals
    definitions:
      - value: |+
            # The populate function isn't directly used by SSG at the moment but it can be
            # used for testing purposes and will be used in SSG Testsuite in the future.

            function populate {
            # code to populate environment variables needed (for unit testing)
            if [ -z "${!1}" ]; then
            	echo "$1 is not defined. Exiting."
            	exit
            fi
            }

  - id: function_replace_or_append
    id_namespace: org.ssgproject.RHEL-8
    title: Remediation function replace\_or\_append
    description: |
        Shared
        bash remediation function. Not intended to be changed by tailoring.
    type: string
    operator: equals
    definitions:
      - value: |+
            # Function to replace configuration setting in config file or add the configuration setting if
            # it does not exist.
            #
            # Expects arguments:
            #
            # config_file:		Configuration file that will be modified
            # key:			Configuration option to change
            # value:		Value of the configuration option to change
            # cce:			The CCE identifier or '@CCENUM@' if no CCE identifier exists
            # format:		The printf-like format string that will be given stripped key and value as arguments,
            #			so e.g. '%s=%s' will result in key=value subsitution (i.e. without spaces around =)
            #
            # Optional arugments:
            #
            # format:		Optional argument to specify the format of how key/value should be
            # 			modified/appended in the configuration file. The default is key = value.
            #
            # Example Call(s):
            #
            #     With default format of 'key = value':
            #     replace_or_append '/etc/sysctl.conf' '^kernel.randomize_va_space' '2' '@CCENUM@'
            #
            #     With custom key/value format:
            #     replace_or_append '/etc/sysconfig/selinux' '^SELINUX=' 'disabled' '@CCENUM@' '%s=%s'
            #
            #     With a variable:
            #     replace_or_append '/etc/sysconfig/selinux' '^SELINUX=' $var_selinux_state '@CCENUM@' '%s=%s'
            #
            function replace_or_append {
              local default_format='%s = %s' case_insensitive_mode=yes sed_case_insensitive_option='' grep_case_insensitive_option=''
              local config_file=$1
              local key=$2
              local value=$3
              local cce=$4
              local format=$5

              if [ "$case_insensitive_mode" = yes ]; then
                sed_case_insensitive_option="i"
                grep_case_insensitive_option="-i"
              fi
              [ -n "$format" ] || format="$default_format"
              # Check sanity of the input
              [ $# -ge "3" ] || { echo "Usage: replace_or_append <config_file_location> <key_to_search> <new_value> [<CCE number or literal '@CCENUM@' if unknown>] [printf-like format, default is '$default_format']" >&2; exit 1; }

              # Test if the config_file is a symbolic link. If so, use --follow-symlinks with sed.
              # Otherwise, regular sed command will do.
              sed_command=('sed' '-i')
              if test -L "$config_file"; then
                sed_command+=('--follow-symlinks')
              fi

              # Test that the cce arg is not empty or does not equal @CCENUM@.
              # If @CCENUM@ exists, it means that there is no CCE assigned.
              if [ -n "$cce" ] && [ "$cce" != '@CCENUM@' ]; then
                cce="CCE-${cce}"
              else
                cce="CCE"
              fi

              # Strip any search characters in the key arg so that the key can be replaced without
              # adding any search characters to the config file.
              stripped_key=$(sed 's/[\^=\$,;+]*//g' <<< "$key")

              # shellcheck disable=SC2059
              printf -v formatted_output "$format" "$stripped_key" "$value"

              # If the key exists, change it. Otherwise, add it to the config_file.
              # We search for the key string followed by a word boundary (matched by \>),
              # so if we search for 'setting', 'setting2' won't match.
              if LC_ALL=C grep -q -m 1 $grep_case_insensitive_option -e "${key}\\>" "$config_file"; then
                "${sed_command[@]}" "s/${key}\\>.*/$formatted_output/g$sed_case_insensitive_option" "$config_file"
              else
                # \n is precaution for case where file ends without trailing newline
                printf '\n# Per %s: Set %s in %s\n' "$cce" "$formatted_output" "$config_file" >> "$config_file"
                printf '%s\n' "$formatted_output" >> "$config_file"
              fi
            }

  - id: function_set_faillock_option_to_value_in_pam_file
    id_namespace: org.ssgproject.RHEL-8
    title: Remediation function set\_faillock\_option\_to\_value\_in\_pam\_file
    description: |
        Shared
        bash remediation function. Not intended to be changed by tailoring.
    type: string
    operator: equals
    definitions:
      - value: |+
            function set_faillock_option_to_value_in_pam_file {
            	# If invoked with no arguments, exit. This is an intentional behavior.
            	[ $# -gt 1 ] || return 0
            	[ $# -ge 3 ] || die "$0 requires exactly zero, three, or four arguments"
            	[ $# -le 4 ] || die "$0 requires exactly zero, three, or four arguments"
            	local _pamFile="$1" _option="$2" _value="$3" _insert_lines_callback="$4"
            	# pam_faillock.so already present?
            	if grep -q "^auth.*pam_faillock.so.*" "$_pamFile"; then

            		# pam_faillock.so present, is the option present?
            		if grep -q "^auth.*[default=die].*pam_faillock.so.*authfail.*$_option=" "$_pamFile"; then

            			# both pam_faillock.so & option present, just correct option to the right value
            			sed -i --follow-symlinks "s/\(^auth.*required.*pam_faillock.so.*preauth.*silent.*\)\($_option *= *\).*/\1\2$_value/" "$_pamFile"
            			sed -i --follow-symlinks "s/\(^auth.*[default=die].*pam_faillock.so.*authfail.*\)\($_option *= *\).*/\1\2$_value/" "$_pamFile"

            		# pam_faillock.so present, but the option not yet
            		else

            			# append correct option value to appropriate places
            			sed -i --follow-symlinks "/^auth.*required.*pam_faillock.so.*preauth.*silent.*/ s/$/ $_option=$_value/" "$_pamFile"
            			sed -i --follow-symlinks "/^auth.*[default=die].*pam_faillock.so.*authfail.*/ s/$/ $_option=$_value/" "$_pamFile"
            		fi

            	# pam_faillock.so not present yet
            	else
            		test -z "$_insert_lines_callback" || "$_insert_lines_callback" "$_option" "$_value" "$_pamFile"
            		# insert pam_faillock.so preauth & authfail rows with proper value of the option in question
            	fi
            }

  - id: function_perform_audit_adjtimex_settimeofday_stime_remediation
    id_namespace: org.ssgproject.RHEL-8
    title: |
        Remediation function
        perform\_audit\_adjtimex\_settimeofday\_stime\_remediation
    description: |
        Shared
        bash remediation function. Not intended to be changed by tailoring.
    type: string
    operator: equals
    definitions:
      - value: |+
            # Function to fix syscall audit rule for given system call. It is
            # based on example audit syscall rule definitions as outlined in
            # /usr/share/doc/audit-2.3.7/stig.rules file provided with the audit
            # package. It will combine multiple system calls belonging to the same
            # syscall group into one audit rule (rather than to create audit rule per
            # different system call) to avoid audit infrastructure performance penalty
            # in the case of 'one-audit-rule-definition-per-one-system-call'. See:
            #
            #   https://www.redhat.com/archives/linux-audit/2014-November/msg00009.html
            #
            # for further details.
            #
            # Expects five arguments (each of them is required) in the form of:
            # * audit tool				tool used to load audit rules,
            # 					either 'auditctl', or 'augenrules
            # * audit rules' pattern		audit rule skeleton for same syscall
            # * syscall group			greatest common string this rule shares
            # 					with other rules from the same group
            # * architecture			architecture this rule is intended for
            # * full form of new rule to add	expected full form of audit rule as to be
            # 					added into audit.rules file
            #
            # Note: The 2-th up to 4-th arguments are used to determine how many existing
            # audit rules will be inspected for resemblance with the new audit rule
            # (5-th argument) the function is going to add. The rule's similarity check
            # is performed to optimize audit.rules definition (merge syscalls of the same
            # group into one rule) to avoid the "single-syscall-per-audit-rule" performance
            # penalty.
            #
            # Example call:
            #
            #	See e.g. 'audit_rules_file_deletion_events.sh' remediation script
            #
            function fix_audit_syscall_rule {

            # Load function arguments into local variables
            local tool="$1"
            local pattern="$2"
            local group="$3"
            local arch="$4"
            local full_rule="$5"

            # Check sanity of the input
            if [ $# -ne "5" ]
            then
            	echo "Usage: fix_audit_syscall_rule 'tool' 'pattern' 'group' 'arch' 'full rule'"
            	echo "Aborting."
            	exit 1
            fi

            # Create a list of audit *.rules files that should be inspected for presence and correctness
            # of a particular audit rule. The scheme is as follows:
            #
            # -----------------------------------------------------------------------------------------
            #  Tool used to load audit rules | Rule already defined  |  Audit rules file to inspect    |
            # -----------------------------------------------------------------------------------------
            #        auditctl                |     Doesn't matter    |  /etc/audit/audit.rules         |
            # -----------------------------------------------------------------------------------------
            #        augenrules              |          Yes          |  /etc/audit/rules.d/*.rules     |
            #        augenrules              |          No           |  /etc/audit/rules.d/$key.rules  |
            # -----------------------------------------------------------------------------------------
            #
            declare -a files_to_inspect

            retval=0

            # First check sanity of the specified audit tool
            if [ "$tool" != 'auditctl' ] && [ "$tool" != 'augenrules' ]
            then
            	echo "Unknown audit rules loading tool: $1. Aborting."
            	echo "Use either 'auditctl' or 'augenrules'!"
            	return 1
            # If audit tool is 'auditctl', then add '/etc/audit/audit.rules'
            # file to the list of files to be inspected
            elif [ "$tool" == 'auditctl' ]
            then
            	files_to_inspect=("${files_to_inspect[@]}" '/etc/audit/audit.rules' )
            # If audit tool is 'augenrules', then check if the audit rule is defined
            # If rule is defined, add '/etc/audit/rules.d/*.rules' to the list for inspection
            # If rule isn't defined yet, add '/etc/audit/rules.d/$key.rules' to the list for inspection
            elif [ "$tool" == 'augenrules' ]
            then
            	# Extract audit $key from audit rule so we can use it later
            	key=$(expr "$full_rule" : '.*-k[[:space:]]\([^[:space:]]\+\)' '|' "$full_rule" : '.*-F[[:space:]]key=\([^[:space:]]\+\)')
            	IFS_BKP="$IFS"
            	# Check if particular audit rule is already defined
            	IFS=$'\n'
            	matches=($(sed -s -n -e "\;${pattern};!d" -e "/${arch}/!d" -e "/${group}/!d;F" /etc/audit/rules.d/*.rules))
            	if [ $? -ne 0 ]
            	then
            		retval=1
            	fi
            	# Reset IFS back to default
            	IFS="$IFS_BKP"
            	for match in "${matches[@]}"
            	do
            		files_to_inspect=("${files_to_inspect[@]}" "${match}")
            	done
            	# Case when particular rule isn't defined in /etc/audit/rules.d/*.rules yet
            	if [ ${#files_to_inspect[@]} -eq "0" ]
            	then
            		files_to_inspect="/etc/audit/rules.d/$key.rules"
            		if [ ! -e "$files_to_inspect" ]
            		then
            			touch "$files_to_inspect"
            			chmod 0640 "$files_to_inspect"
            		fi
            	fi
            fi

            #
            # Indicator that we want to append $full_rule into $audit_file by default
            local append_expected_rule=0

            for audit_file in "${files_to_inspect[@]}"
            do

            	IFS_BKP="$IFS"
            	# Filter existing $audit_file rules' definitions to select those that:
            	# * follow the rule pattern, and
            	# * meet the hardware architecture requirement, and
            	# * are current syscall group specific
            	IFS=$'\n'
            	existing_rules=($(sed -e "\;${pattern};!d" -e "/${arch}/!d" -e "/${group}/!d"  "$audit_file"))
            	if [ $? -ne 0 ]
            	then
            		retval=1
            	fi
            	# Reset IFS back to default
            	IFS="$IFS_BKP"

            	# Process rules found case-by-case
            	for rule in "${existing_rules[@]}"
            	do
            		# Found rule is for same arch & key, but differs (e.g. in count of -S arguments)
            		if [ "${rule}" != "${full_rule}" ]
            		then
            			# If so, isolate just '(-S \w)+' substring of that rule
            			rule_syscalls=$(echo $rule | grep -o -P '(-S \w+ )+')
            			# Check if list of '-S syscall' arguments of that rule is subset
            			# of '-S syscall' list of expected $full_rule
            			if grep -q -- "$rule_syscalls" <<< "$full_rule"
            			then
            				# Rule is covered (i.e. the list of -S syscalls for this rule is
            				# subset of -S syscalls of $full_rule => existing rule can be deleted
            				# Thus delete the rule from audit.rules & our array
            				sed -i -e "\;${rule};d" "$audit_file"
            				if [ $? -ne 0 ]
            				then
            					retval=1
            				fi
            				existing_rules=("${existing_rules[@]//$rule/}")
            			else
            				# Rule isn't covered by $full_rule - it besides -S syscall arguments
            				# for this group contains also -S syscall arguments for other syscall
            				# group. Example: '-S lchown -S fchmod -S fchownat' => group='chown'
            				# since 'lchown' & 'fchownat' share 'chown' substring
            				# Therefore:
            				# * 1) delete the original rule from audit.rules
            				# (original '-S lchown -S fchmod -S fchownat' rule would be deleted)
            				# * 2) delete the -S syscall arguments for this syscall group, but
            				# keep those not belonging to this syscall group
            				# (original '-S lchown -S fchmod -S fchownat' would become '-S fchmod'
            				# * 3) append the modified (filtered) rule again into audit.rules
            				# if the same rule not already present
            				#
            				# 1) Delete the original rule
            				sed -i -e "\;${rule};d" "$audit_file"
            				if [ $? -ne 0 ]
            				then
            					retval=1
            				fi
            				IFS_BKP="$IFS"
            				# 2) Delete syscalls for this group, but keep those from other groups
            				# Convert current rule syscall's string into array splitting by '-S' delimiter
            				IFS=$'-S'
            				read -a rule_syscalls_as_array <<< "$rule_syscalls"
            				# Reset IFS back to default
            				IFS="$IFS_BKP"
            				# Declare new empty string to hold '-S syscall' arguments from other groups
            				new_syscalls_for_rule=''
            				# Walk through existing '-S syscall' arguments
            				for syscall_arg in "${rule_syscalls_as_array[@]}"
            				do
            					# Skip empty $syscall_arg values
            					if [ "$syscall_arg" == '' ]
            					then
            						continue
            					fi
            					# If the '-S syscall' doesn't belong to current group add it to the new list
            					# (together with adding '-S' delimiter back for each of such item found)
            					if grep -q -v -- "$group" <<< "$syscall_arg"
            					then
            						new_syscalls_for_rule="$new_syscalls_for_rule -S $syscall_arg"
            					fi
            				done
            				# Replace original '-S syscall' list with the new one for this rule
            				updated_rule=${rule//$rule_syscalls/$new_syscalls_for_rule}
            				# Squeeze repeated whitespace characters in rule definition (if any) into one
            				updated_rule=$(echo "$updated_rule" | tr -s '[:space:]')
            				# 3) Append the modified / filtered rule again into audit.rules
            				#    (but only in case it's not present yet to prevent duplicate definitions)
            				if ! grep -q -- "$updated_rule" "$audit_file"
            				then
            					echo "$updated_rule" >> "$audit_file"
            				fi
            			fi
            		else
            			# $audit_file already contains the expected rule form for this
            			# architecture & key => don't insert it second time
            			append_expected_rule=1
            		fi
            	done

            	# We deleted all rules that were subset of the expected one for this arch & key.
            	# Also isolated rules containing system calls not from this system calls group.
            	# Now append the expected rule if it's not present in $audit_file yet
            	if [[ ${append_expected_rule} -eq "0" ]]
            	then
            		echo "$full_rule" >> "$audit_file"
            	fi
            done

            return $retval

            }


            # Function to perform remediation for the 'adjtimex', 'settimeofday', and 'stime' audit
            # system calls on RHEL, Fedora or OL systems.
            # Remediation performed for both possible tools: 'auditctl' and 'augenrules'.
            #
            # Note: 'stime' system call isn't known at 64-bit arch (see "$ ausyscall x86_64 stime" 's output)
            # therefore excluded from the list of time group system calls to be audited on this arch
            #
            # Example Call:
            #
            #      perform_audit_adjtimex_settimeofday_stime_remediation
            #
            function perform_audit_adjtimex_settimeofday_stime_remediation {

            # Retrieve hardware architecture of the underlying system
            [ $(getconf LONG_BIT) = "32" ] && RULE_ARCHS=("b32") || RULE_ARCHS=("b32" "b64")

            for ARCH in "${RULE_ARCHS[@]}"
            do

            	PATTERN="-a always,exit -F arch=${ARCH} -S .* -k *"
            	# Create expected audit group and audit rule form for particular system call & architecture
            	if [ ${ARCH} = "b32" ]
            	then
            		# stime system call is known at 32-bit arch (see e.g "$ ausyscall i386 stime" 's output)
            		# so append it to the list of time group system calls to be audited
            		GROUP="\(adjtimex\|settimeofday\|stime\)"
            		FULL_RULE="-a always,exit -F arch=${ARCH} -S adjtimex -S settimeofday -S stime -k audit_time_rules"
            	elif [ ${ARCH} = "b64" ]
            	then
            		# stime system call isn't known at 64-bit arch (see "$ ausyscall x86_64 stime" 's output)
            		# therefore don't add it to the list of time group system calls to be audited
            		GROUP="\(adjtimex\|settimeofday\)"
            		FULL_RULE="-a always,exit -F arch=${ARCH} -S adjtimex -S settimeofday -k audit_time_rules"
            	fi
            	# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'
            	fix_audit_syscall_rule "auditctl" "$PATTERN" "$GROUP" "$ARCH" "$FULL_RULE"
            	fix_audit_syscall_rule "augenrules" "$PATTERN" "$GROUP" "$ARCH" "$FULL_RULE"
            done

            }

  - id: function_package_install
    id_namespace: org.ssgproject.RHEL-8
    title: Remediation function package\_install
    description: |
        Shared
        bash remediation function. Not intended to be changed by tailoring.
    type: string
    operator: equals
    definitions:
      - value: |+
            # Function to install packages on RHEL, Fedora, Debian, and possibly other systems.
            #
            # Example Call(s):
            #
            #     package_install aide
            #
            function package_install {

            # Load function arguments into local variables
            local package="$1"

            # Check sanity of the input
            if [ $# -ne "1" ]
            then
              echo "Usage: package_install 'package_name'"
              echo "Aborting."
              exit 1
            fi

            if which dnf ; then
              if ! rpm -q --quiet "$package"; then
                dnf install -y "$package"
              fi
            elif which yum ; then
              if ! rpm -q --quiet "$package"; then
                yum install -y "$package"
              fi
            elif which apt-get ; then
              apt-get install -y "$package"
            else
              echo "Failed to detect available packaging system, tried dnf, yum and apt-get!"
              echo "Aborting."
              exit 1
            fi

            }

  - id: function_perform_audit_rules_privileged_commands_remediation
    id_namespace: org.ssgproject.RHEL-8
    title: |
        Remediation function
        perform\_audit\_rules\_privileged\_commands\_remediation
    description: |
        Shared
        bash remediation function. Not intended to be changed by tailoring.
    type: string
    operator: equals
    definitions:
      - value: |+
            # Function to perform remediation for 'audit_rules_privileged_commands' rule
            #
            # Expects two arguments:
            #
            # audit_tool		tool used to load audit rules
            # 			One of 'auditctl' or 'augenrules'
            #
            # min_auid		Minimum original ID the user logged in with
            # 			'500' for RHEL-6 and before, '1000' for RHEL-7 and after.
            #
            # Example Call(s):
            #
            #      perform_audit_rules_privileged_commands_remediation "auditctl" "500"
            #      perform_audit_rules_privileged_commands_remediation "augenrules"	"1000"
            #
            function perform_audit_rules_privileged_commands_remediation {
            #
            # Load function arguments into local variables
            local tool="$1"
            local min_auid="$2"

            # Backup IFS value
            IFS_BKP="$IFS"

            # Check sanity of the input
            if [ $# -ne "2" ]
            then
            	echo "Usage: perform_audit_rules_privileged_commands_remediation 'auditctl | augenrules' '500 | 1000'"
            	echo "Aborting."
            	exit 1
            fi

            declare -a files_to_inspect=()

            # Check sanity of the specified audit tool
            if [ "$tool" != 'auditctl' ] && [ "$tool" != 'augenrules' ]
            then
            	echo "Unknown audit rules loading tool: $1. Aborting."
            	echo "Use either 'auditctl' or 'augenrules'!"
            	exit 1
            # If the audit tool is 'auditctl', then:
            # * add '/etc/audit/audit.rules'to the list of files to be inspected,
            # * specify '/etc/audit/audit.rules' as the output audit file, where
            #   missing rules should be inserted
            elif [ "$tool" == 'auditctl' ]
            then
            	files_to_inspect=("/etc/audit/audit.rules")
            	output_audit_file="/etc/audit/audit.rules"
            #
            # If the audit tool is 'augenrules', then:
            # * add '/etc/audit/rules.d/*.rules' to the list of files to be inspected
            #   (split by newline),
            # * specify /etc/audit/rules.d/privileged.rules' as the output file, where
            #   missing rules should be inserted
            elif [ "$tool" == 'augenrules' ]
            then
            	IFS=$'\n'
            	files_to_inspect=($(find /etc/audit/rules.d -maxdepth 1 -type f -name '*.rules' -print))
            	output_audit_file="/etc/audit/rules.d/privileged.rules"
            fi

            # Obtain the list of SUID/SGID binaries on the particular system (split by newline)
            # into privileged_binaries array
            IFS=$'\n'
            privileged_binaries=($(find / -xdev -type f -perm -4000 -o -type f -perm -2000 2>/dev/null))

            # Keep list of SUID/SGID binaries that have been already handled within some previous iteration
            declare -a sbinaries_to_skip=()

            # For each found sbinary in privileged_binaries list
            for sbinary in "${privileged_binaries[@]}"
            do

            	# Check if this sbinary wasn't already handled in some of the previous sbinary iterations
            	# Return match only if whole sbinary definition matched (not in the case just prefix matched!!!)
            	if [[ $(sed -ne "\|${sbinary}|p" <<< "${sbinaries_to_skip[*]}") ]]
            	then
            		# If so, don't process it second time & go to process next sbinary
            		continue
            	fi

            	# Reset the counter of inspected files when starting to check
            	# presence of existing audit rule for new sbinary
            	local count_of_inspected_files=0

            	# Define expected rule form for this binary
            	expected_rule="-a always,exit -F path=${sbinary} -F perm=x -F auid>=${min_auid} -F auid!=unset -k privileged"

            	# If list of audit rules files to be inspected is empty, just add new rule and move on to next binary
            	if [[ ${#files_to_inspect[@]} -eq 0 ]]; then
            		echo "$expected_rule" >> "$output_audit_file"
            		continue
            	fi

            	# Replace possible slash '/' character in sbinary definition so we could use it in sed expressions below
            	sbinary_esc=${sbinary//$'/'/$'\/'}

            	# For each audit rules file from the list of files to be inspected
            	for afile in "${files_to_inspect[@]}"
            	do

            		# Search current audit rules file's content for match. Match criteria:
            		# * existing rule is for the same SUID/SGID binary we are currently processing (but
            		#   can contain multiple -F path= elements covering multiple SUID/SGID binaries)
            		# * existing rule contains all arguments from expected rule form (though can contain
            		#   them in arbitrary order)

            		base_search=$(sed -e '/-a always,exit/!d' -e '/-F path='"${sbinary_esc}"'/!d'		\
            				-e '/-F path=[^[:space:]]\+/!d'   -e '/-F perm=.*/!d'						\
            				-e '/-F auid>='"${min_auid}"'/!d' -e '/-F auid!=\(4294967295\|unset\)/!d'	\
            				-e '/-k \|-F key=/!d' "$afile")

            		# Increase the count of inspected files for this sbinary
            		count_of_inspected_files=$((count_of_inspected_files + 1))

            		# Require execute access type to be set for existing audit rule
            		exec_access='x'

            		# Search current audit rules file's content for presence of rule pattern for this sbinary
            		if [[ $base_search ]]
            		then

            			# Current audit rules file already contains rule for this binary =>
            			# Store the exact form of found rule for this binary for further processing
            			concrete_rule=$base_search

            			# Select all other SUID/SGID binaries possibly also present in the found rule
            			IFS=$'\n'
            			handled_sbinaries=($(grep -o -e "-F path=[^[:space:]]\+" <<< "$concrete_rule"))
            			IFS=$' '
            			handled_sbinaries=(${handled_sbinaries[@]//-F path=/})

            			# Merge the list of such SUID/SGID binaries found in this iteration with global list ignoring duplicates
            			sbinaries_to_skip=($(for i in "${sbinaries_to_skip[@]}" "${handled_sbinaries[@]}"; do echo "$i"; done | sort -du))

            			# Separate concrete_rule into three sections using hash '#'
            			# sign as a delimiter around rule's permission section borders
            			concrete_rule="$(echo "$concrete_rule" | sed -n "s/\(.*\)\+\(-F perm=[rwax]\+\)\+/\1#\2#/p")"

            			# Split concrete_rule into head, perm, and tail sections using hash '#' delimiter
            			IFS=$'#'
            			read -r rule_head rule_perm rule_tail <<<  "$concrete_rule"

            			# Extract already present exact access type [r|w|x|a] from rule's permission section
            			access_type=${rule_perm//-F perm=/}

            			# Verify current permission access type(s) for rule contain 'x' (execute) permission
            			if ! grep -q "$exec_access" <<< "$access_type"
            			then

            				# If not, append the 'x' (execute) permission to the existing access type bits
            				access_type="$access_type$exec_access"
            				# Reconstruct the permissions section for the rule
            				new_rule_perm="-F perm=$access_type"
            				# Update existing rule in current audit rules file with the new permission section
            				sed -i "s#${rule_head}\(.*\)${rule_tail}#${rule_head}${new_rule_perm}${rule_tail}#" "$afile"

            			fi

            		# If the required audit rule for particular sbinary wasn't found yet, insert it under following conditions:
            		#
            		# * in the "auditctl" mode of operation insert particular rule each time
            		#   (because in this mode there's only one file -- /etc/audit/audit.rules to be inspected for presence of this rule),
            		#
            		# * in the "augenrules" mode of operation insert particular rule only once and only in case we have already
            		#   searched all of the files from /etc/audit/rules.d/*.rules location (since that audit rule can be defined
            		#   in any of those files and if not, we want it to be inserted only once into /etc/audit/rules.d/privileged.rules file)
            		#
            		elif [ "$tool" == "auditctl" ] || [[ "$tool" == "augenrules" && $count_of_inspected_files -eq "${#files_to_inspect[@]}" ]]
            		then

            			# Check if this sbinary wasn't already handled in some of the previous afile iterations
            			# Return match only if whole sbinary definition matched (not in the case just prefix matched!!!)
            			if [[ ! $(sed -ne "\|${sbinary}|p" <<< "${sbinaries_to_skip[*]}") ]]
            			then
            				# Current audit rules file's content doesn't contain expected rule for this
            				# SUID/SGID binary yet => append it
            				echo "$expected_rule" >> "$output_audit_file"
            			fi

            			continue
            		fi

            	done

            done

            # Reset IFS back to default
            IFS="$IFS_BKP"
            }

  - id: function_firefox_js_setting
    id_namespace: org.ssgproject.RHEL-8
    title: Remediation function firefox\_js\_setting
    description: |
        Shared
        bash remediation function. Not intended to be changed by tailoring.
    type: string
    operator: equals
    definitions:
      - value: |+
            # Function to replace configuration setting(s) in the Firefox preferences JavaScript file or add the
            # preference if it does not exist.
            #
            # Expects three arguments:
            #
            # config_file:          Configuration file that will be modified
            # key:                  Configuration option to change
            # value:                Value of the configuration option to change
            #
            #
            # Example Call(s):
            #
            #     Without string or variable:
            #     firefox_js_setting "stig_settings.js" "general.config.obscure_value" "0"
            #
            #     With string:
            #     firefox_js_setting "stig_settings.js" "general.config.filename" "\"stig.cfg\""
            #
            #     With a string variable:
            #     firefox_js_setting "stig_settings.js" "general.config.filename" "\"$var_config_file_name\""
            #
            function firefox_js_setting {
              local firefox_js=$1
              local key=$2
              local value=$3
              local firefox_dirs="/usr/lib/firefox /usr/lib64/firefox /usr/local/lib/firefox /usr/local/lib64/firefox"
              local firefox_pref="/defaults/pref"
              local firefox_preferences="/defaults/preferences"

              # Check sanity of input
              if [ $# -lt "3" ]
              then
                    echo "Usage: firefox_js_setting 'config_javascript_file' 'key_to_search' 'new_value'"
                    echo
                    echo "Aborting."
                    exit 1
              fi

              # Check the possible Firefox install directories
              for firefox_dir in ${firefox_dirs}; do
                # If the Firefox directory exists, then Firefox is installed
                if [ -d "${firefox_dir}" ]; then
                  # Different versions of Firefox have different preferences directories, check for them and set the right one
                  if [ -d "${firefox_dir}/${firefox_pref}" ] ; then
                    local firefox_pref_dir="${firefox_dir}/${firefox_pref}"
                  elif [ -d "${firefox_dir}/${firefox_preferences}" ] ; then
                    local firefox_pref_dir="${firefox_dir}/${firefox_preferences}"
                  else
                    mkdir -m 755 -p "${firefox_dir}/${firefox_preferences}"
                    local firefox_pref_dir="${firefox_dir}/${firefox_preferences}"
                  fi

                  # Make sure the Firefox .js file exists and has the appropriate permissions
                  if ! [ -f "${firefox_pref_dir}/${firefox_js}" ] ; then
                    touch "${firefox_pref_dir}/${firefox_js}"
                    chmod 644 "${firefox_pref_dir}/${firefox_js}"
                  fi

                  # If the key exists, change it. Otherwise, add it to the config_file.
                  if LC_ALL=C grep -m 1 -q "^pref(\"${key}\", " "${firefox_pref_dir}/${firefox_js}"; then
                    sed -i "s/pref(\"${key}\".*/pref(\"${key}\", ${value});/g" "${firefox_pref_dir}/${firefox_js}"
                  else
                    echo "pref(\"${key}\", ${value});" >> "${firefox_pref_dir}/${firefox_js}"
                  fi
                fi
              done

            }

  - id: function_ensure_there_are_servers_in_ntp_compatible_config_file
    id_namespace: org.ssgproject.RHEL-8
    title: |
        Remediation function
        ensure\_there\_are\_servers\_in\_ntp\_compatible\_config\_file
    description: |
        Shared
        bash remediation function. Not intended to be changed by tailoring.
    type: string
    operator: equals
    definitions:
      - value: |+
            # Function ensures that the ntp/chrony config file contains valid server entries
            # $1: Path to the config file
            # $2: Comma-separated list of servers
            function ensure_there_are_servers_in_ntp_compatible_config_file {
            	# If invoked with no arguments, exit. This is an intentional behavior.
            	[ $# -gt 1 ] || return 0
            	[ $# = 2 ] || die "$0 requires zero or exactly two arguments"
            	local _config_file="$1" _servers_list="$2"
            	if ! grep -q '#[[:space:]]*server' "$_config_file"; then
            		for server in $(echo "$_servers_list" | tr ',' '\n') ; do
            			printf '\nserver %s iburst' "$server" >> "$_config_file"
            		done
            	else
            		sed -i 's/#[ \t]*server/server/g' "$_config_file"
            	fi
            }

  - id: function_include_dconf_settings
    id_namespace: org.ssgproject.RHEL-8
    title: Remediation function include\_dconf\_settings
    description: |
        Shared
        bash remediation function. Not intended to be changed by tailoring.
    type: string
    operator: equals
    definitions:
      - value: |+
            function include_dconf_settings {
            	:
            }

            # Function to configure DConf settings for RHEL and Fedora systems.
            #
            # Example Call(s):
            #
            #     dconf_settings 'org/gnome/login-screen' 'banner-message-enable' 'true' 'local.d' '10-banner'
            #
            function dconf_settings {
            	local _path=$1 _key=$2 _value=$3 _db=$4 _settingFile=$5

            	# Check sanity of the input
            	if [ $# -ne "5" ]
            	then
            		echo "Usage: dconf_settings 'dconf_path' 'dconf_setting' 'dconf_db' 'dconf_settingsfile'"
            		echo "Aborting."
            		exit 1
            	fi

            	# Check for setting in any of the DConf db directories
            	SETTINGSFILES=($(grep -r "\[${_path}]" "/etc/dconf/db/" | grep -v "distro\|ibus" | cut -d":" -f1))
            	DCONFFILE="/etc/dconf/db/${_db}/${_settingFile}"
            	DBDIR="/etc/dconf/db/${_db}"

            	mkdir -p "${DBDIR}"

            	if [[ -z "${SETTINGSFILES[@]}" ]]
            	then
            		[ ! -z ${DCONFFILE} ] || $(echo "" >> ${DCONFFILE})
            		echo "[${_path}]" >> ${DCONFFILE}
            		echo "${_key}=${_value}" >> ${DCONFFILE}
            	else
            		if grep -q "^(?!#)${_key}" ${SETTINGSFILES[@]}
            		then
            			sed -i "s/${_key}\s*=\s*.*/${_key}=${_value}/g" ${SETTINGSFILES[@]}
            		else
            			sed -i "\|\[${_path}]|a\\${_key}=${_value}" ${SETTINGSFILES[@]}
            		fi
            	fi

            	dconf update
            }

            # Function to configure DConf locks for RHEL and Fedora systems.
            #
            # Example Call(s):
            #
            #     dconf_lock 'org/gnome/login-screen' 'banner-message-enable' 'local.d' 'banner'
            #
            function dconf_lock {
            	local _key=$1 _setting=$2 _db=$3 _lockFile=$4

            	# Check sanity of the input
            	if [ $# -ne "4" ]
            	then
            		echo "Usage: dconf_lock 'dconf_path' 'dconf_setting' 'dconf_db' 'dconf_lockfile'"
            		echo "Aborting."
            		exit 1
            	fi

            	# Check for setting in any of the DConf db directories
            	LOCKFILES=$(grep -r "^/${_key}/${_setting}$" "/etc/dconf/db/" | grep -v "distro\|ibus" | cut -d":" -f1)
            	LOCKSFOLDER="/etc/dconf/db/${_db}/locks"

            	mkdir -p "${LOCKSFOLDER}"

            	if [[ -z "${LOCKFILES}" ]]
            	then
            		echo "/${_key}/${_setting}" >> "/etc/dconf/db/${_db}/locks/${_lockFile}"
            	fi

            	dconf update
            }


  - id: function_fix_audit_watch_rule
    id_namespace: org.ssgproject.RHEL-8
    title: Remediation function fix\_audit\_watch\_rule
    description: |
        Shared
        bash remediation function. Not intended to be changed by tailoring.
    type: string
    operator: equals
    definitions:
      - value: |+
            # Function to fix audit file system object watch rule for given path:
            # * if rule exists, also verifies the -w bits match the requirements
            # * if rule doesn't exist yet, appends expected rule form to $files_to_inspect
            #   audit rules file, depending on the tool which was used to load audit rules
            #
            # Expects four arguments (each of them is required) in the form of:
            # * audit tool				tool used to load audit rules,
            # 					either 'auditctl', or 'augenrules'
            # * path                        	value of -w audit rule's argument
            # * required access bits        	value of -p audit rule's argument
            # * key                         	value of -k audit rule's argument
            #
            # Example call:
            #
            #       fix_audit_watch_rule "auditctl" "/etc/localtime" "wa" "audit_time_rules"
            #
            function fix_audit_watch_rule {

            # Load function arguments into local variables
            local tool="$1"
            local path="$2"
            local required_access_bits="$3"
            local key="$4"

            # Check sanity of the input
            if [ $# -ne "4" ]
            then
            	echo "Usage: fix_audit_watch_rule 'tool' 'path' 'bits' 'key'"
            	echo "Aborting."
            	exit 1
            fi

            # Create a list of audit *.rules files that should be inspected for presence and correctness
            # of a particular audit rule. The scheme is as follows:
            #
            # -----------------------------------------------------------------------------------------
            # Tool used to load audit rules	| Rule already defined	|  Audit rules file to inspect	  |
            # -----------------------------------------------------------------------------------------
            #	auditctl		|     Doesn't matter	|  /etc/audit/audit.rules	  |
            # -----------------------------------------------------------------------------------------
            # 	augenrules		|          Yes		|  /etc/audit/rules.d/*.rules	  |
            # 	augenrules		|          No		|  /etc/audit/rules.d/$key.rules  |
            # -----------------------------------------------------------------------------------------
            declare -a files_to_inspect

            # Check sanity of the specified audit tool
            if [ "$tool" != 'auditctl' ] && [ "$tool" != 'augenrules' ]
            then
            	echo "Unknown audit rules loading tool: $1. Aborting."
            	echo "Use either 'auditctl' or 'augenrules'!"
            	exit 1
            # If the audit tool is 'auditctl', then add '/etc/audit/audit.rules'
            # into the list of files to be inspected
            elif [ "$tool" == 'auditctl' ]
            then
            	files_to_inspect=("${files_to_inspect[@]}" '/etc/audit/audit.rules')
            # If the audit is 'augenrules', then check if rule is already defined
            # If rule is defined, add '/etc/audit/rules.d/*.rules' to list of files for inspection.
            # If rule isn't defined, add '/etc/audit/rules.d/$key.rules' to list of files for inspection.
            elif [ "$tool" == 'augenrules' ]
            then
            	# Backup IFS value
            	IFS_BKP="$IFS"
            	# Case when particular audit rule is already defined in some of /etc/audit/rules.d/*.rules file
            	# Get pair -- filepath : matching_row into @matches array
            	IFS=$'\n'
            	matches=($(grep -P "[\s]*-w[\s]+$path" /etc/audit/rules.d/*.rules))
            	# Reset IFS back to default
            	IFS="$IFS_BKP"

            	# For each of the matched entries
            	for match in "${matches[@]}"
            	do
            		# Extract filepath from the match
            		rulesd_audit_file=$(echo $match | cut -f1 -d ':')
            		# Append that path into list of files for inspection
            		files_to_inspect=("${files_to_inspect[@]}" "$rulesd_audit_file")
            	done
            	# Case when particular audit rule isn't defined yet
            	if [ ${#files_to_inspect[@]} -eq "0" ]
            	then
            		# Append '/etc/audit/rules.d/$key.rules' into list of files for inspection
            		files_to_inspect="/etc/audit/rules.d/$key.rules"
            		# If the $key.rules file doesn't exist yet, create it with correct permissions
            		if [ ! -e "$files_to_inspect" ]
            		then
            			touch "$files_to_inspect"
            			chmod 0640 "$files_to_inspect"
            		fi
            	fi
            fi

            # Finally perform the inspection and possible subsequent audit rule
            # correction for each of the files previously identified for inspection
            for audit_rules_file in "${files_to_inspect[@]}"
            do

            	# Check if audit watch file system object rule for given path already present
            	if grep -q -P -- "[\s]*-w[\s]+$path" "$audit_rules_file"
            	then
            		# Rule is found => verify yet if existing rule definition contains
            		# all of the required access type bits

            		# Escape slashes in path for use in sed pattern below
            		local esc_path=${path//$'/'/$'\/'}
            		# Define BRE whitespace class shortcut
            		local sp="[[:space:]]"
            		# Extract current permission access types (e.g. -p [r|w|x|a] values) from audit rule
            		current_access_bits=$(sed -ne "s/$sp*-w$sp\+$esc_path$sp\+-p$sp\+\([rxwa]\{1,4\}\).*/\1/p" "$audit_rules_file")
            		# Split required access bits string into characters array
            		# (to check bit's presence for one bit at a time)
            		for access_bit in $(echo "$required_access_bits" | grep -o .)
            		do
            			# For each from the required access bits (e.g. 'w', 'a') check
            			# if they are already present in current access bits for rule.
            			# If not, append that bit at the end
            			if ! grep -q "$access_bit" <<< "$current_access_bits"
            			then
            				# Concatenate the existing mask with the missing bit
            				current_access_bits="$current_access_bits$access_bit"
            			fi
            		done
            		# Propagate the updated rule's access bits (original + the required
            		# ones) back into the /etc/audit/audit.rules file for that rule
            		sed -i "s/\($sp*-w$sp\+$esc_path$sp\+-p$sp\+\)\([rxwa]\{1,4\}\)\(.*\)/\1$current_access_bits\3/" "$audit_rules_file"
            	else
            		# Rule isn't present yet. Append it at the end of $audit_rules_file file
            		# with proper key

            		echo "-w $path -p $required_access_bits -k $key" >> "$audit_rules_file"
            	fi
            done
            }

  - id: function_package_remove
    id_namespace: org.ssgproject.RHEL-8
    title: Remediation function package\_remove
    description: |
        Shared
        bash remediation function. Not intended to be changed by tailoring.
    type: string
    operator: equals
    definitions:
      - value: |+
            # Function to remove packages on RHEL, Fedora, Debian, and possibly other systems.
            #
            # Example Call(s):
            #
            #     package_remove telnet-server
            #
            function package_remove {

            # Load function arguments into local variables
            local package="$1"

            # Check sanity of the input
            if [ $# -ne "1" ]
            then
              echo "Usage: package_remove 'package_name'"
              echo "Aborting."
              exit 1
            fi

            if which dnf ; then
              if rpm -q --quiet "$package"; then
                dnf remove -y "$package"
              fi
            elif which yum ; then
              if rpm -q --quiet "$package"; then
                yum remove -y "$package"
              fi
            elif which apt-get ; then
              apt-get remove -y "$package"
            else
              echo "Failed to detect available packaging system, tried dnf, yum and apt-get!"
              echo "Aborting."
              exit 1
            fi

            }

  - id: function_include_merge_files_by_lines
    id_namespace: org.ssgproject.RHEL-8
    title: Remediation function include\_merge\_files\_by\_lines
    description: |
        Shared
        bash remediation function. Not intended to be changed by tailoring.
    type: string
    operator: equals
    definitions:
      - value: |+
            function include_merge_files_by_lines {
            	:
            }

            # 1: Filename of the "master" file
            # 2: Filename of the newly created file
            function create_empty_file_like {
            	local lines_count
            	lines_count=$(cat "$1" | wc -l)
            	for _ in $(seq 1 "$lines_count"); do
            		printf '\n' >> "$2"
            	done
            }


            # 1: Filename of the "master" file
            # 2: Filename of sample flie
            function second_file_is_same_except_newlines {
            	local lines_of_master lines_of_sample len_of_master line_number i
            	readarray -t lines_of_master < "$1"
            	readarray -t lines_of_sample < "$2"

            	len_of_master="${#lines_of_master[@]}"
            	if test "$len_of_master" != "${#lines_of_sample[@]}"; then
            		echo "Files '$1' and '$2' have different number of lines, $len_of_master and ${#lines_of_sample[@]} respectively."
            		return 1
            	fi

            	for line_number in $(seq 1 "$len_of_master"); do
            		i=$((line_number - 1))
            		test -n "${lines_of_sample[$i]}" || continue
            		if test "${lines_of_master[$i]}" != "${lines_of_sample[$i]}"; then
            			echo "Line $line_number is different in files '$1' and '$2'."
            			return 1
            		fi
            	done
            }


            # 1: Filename of the "master" file
            # 2: Filename of sample flie
            # 3: List of indices (1-based, space-separated string)
            function merge_first_lines_to_second_on_indices {
            	local lines_of_master lines_of_sample line_number i
            	test -f "$2" || create_empty_file_like "$1" "$2"

            	readarray -t lines_of_master < "$1"
            	readarray -t lines_of_sample < "$2"

            	error_msg="$(second_file_is_same_except_newlines "$1" "$2")"
            	if test $? != 0; then
            		echo "Error merging lines into '$2': $error_msg" >&2
            		return 1
            	fi

            	for line_number in $3; do
            		i=$((line_number - 1))
            		lines_of_sample[$i]="${lines_of_master[$i]}"
            	done

            	printf "%s\n" "${lines_of_sample[@]}" > "$2"
            }

  - id: function_include_set_faillock_option
    id_namespace: org.ssgproject.RHEL-8
    title: Remediation function include\_set\_faillock\_option
    description: |
        Shared
        bash remediation function. Not intended to be changed by tailoring.
    type: string
    operator: equals
    definitions:
      - value: |+
            function include_set_faillock_option {
            	:
            }

            function insert_preauth {
            	local pam_file="$1"
            	local option="$2"
            	local value="$3"
            	# is auth required pam_faillock.so preauth present?
            	if grep -qE "^\s*auth\s+required\s+pam_faillock\.so\s+preauth.*$" "$pam_file" ; then
            		# is the option set?
            		if grep -qE "^\s*auth\s+required\s+pam_faillock\.so\s+preauth.*$option=([0-9]*).*$" "$pam_file" ; then
            			# just change the value of option to a correct value
            			sed -i --follow-symlinks "s/\(^auth.*required.*pam_faillock.so.*preauth.*silent.*\)\($option *= *\).*/\1\2$value/" "$pam_file"
            		# the option is not set.
            		else
            			# append the option
            			sed -i --follow-symlinks "/^auth.*required.*pam_faillock.so.*preauth.*silent.*/ s/$/ $option=$value/" "$pam_file"
            		fi
            	# auth required pam_faillock.so preauth is not present, insert the whole line
            	else
            		sed -i --follow-symlinks "/^auth.*sufficient.*pam_unix.so.*/i auth        required      pam_faillock.so preauth silent $option=$value" "$pam_file"
            	fi
            }

            function insert_authfail {
            	local pam_file="$1"
            	local option="$2"
            	local value="$3"
            	# is auth default pam_faillock.so authfail present?
            	if grep -qE "^\s*auth\s+(\[default=die\])\s+pam_faillock\.so\s+authfail.*$" "$pam_file" ; then
            		# is the option set?
            		if grep -qE "^\s*auth\s+(\[default=die\])\s+pam_faillock\.so\s+authfail.*$option=([0-9]*).*$" "$pam_file" ; then
            			# just change the value of option to a correct value
            			sed -i --follow-symlinks "s/\(^auth.*[default=die].*pam_faillock.so.*authfail.*\)\($option *= *\).*/\1\2$value/" "$pam_file"
            		# the option is not set.
            		else
            			# append the option
            			sed -i --follow-symlinks "/^auth.*[default=die].*pam_faillock.so.*authfail.*/ s/$/ $option=$value/" "$pam_file"
            		fi
            	# auth default pam_faillock.so authfail is not present, insert the whole line
            	else
            		sed -i --follow-symlinks "/^auth.*sufficient.*pam_unix.so.*/a auth        [default=die] pam_faillock.so authfail $option=$value" "$pam_file"
            	fi
            }

            function insert_account {
            	local pam_file="$1"
            	if ! grep -qE "^\s*account\s+required\s+pam_faillock\.so.*$" "$pam_file" ; then
            		sed -E -i --follow-symlinks "/^\s*account\s*required\s*pam_unix.so/i account     required      pam_faillock.so" "$pam_file"
            	fi
            }

            function set_faillock_option {
            	local pam_file="$1"
            	local option="$2"
            	local value="$3"
            	insert_preauth "$pam_file" "$option" "$value"
            	insert_authfail "$pam_file" "$option" "$value"
            	insert_account "$pam_file"
            }

  - id: function_firefox_cfg_setting
    id_namespace: org.ssgproject.RHEL-8
    title: Remediation function firefox\_cfg\_setting
    description: |
        Shared
        bash remediation function. Not intended to be changed by tailoring.
    type: string
    operator: equals
    definitions:
      - value: |+
            # Function to replace configuration setting(s) in the Firefox preferences configuration (.cfg) file or add the
            # preference if it does not exist.
            #
            # Expects three arguments:
            #
            # config_file:          Configuration file that will be modified
            # key:                  Configuration option to change
            # value:                Value of the configuration option to change
            #
            #
            # Example Call(s):
            #
            #     Without string or variable:
            #     firefox_cfg_setting "stig.cfg" "extensions.update.enabled" "false"
            #
            #     With string:
            #     firefox_cfg_setting "stig.cfg" "security.default_personal_cert" "\"Ask Every Time\""
            #
            #     With a string variable:
            #     firefox_cfg_setting "stig.cfg" "browser.startup.homepage\" "\"${var_default_home_page}\""
            #
            function firefox_cfg_setting {
              local firefox_cfg=$1
              local key=$2
              local value=$3
              local firefox_dirs="/usr/lib/firefox /usr/lib64/firefox /usr/local/lib/firefox /usr/local/lib64/firefox"

              # Check sanity of input
              if [ $# -lt "3" ]
              then
                    echo "Usage: firefox_cfg_setting 'config_cfg_file' 'key_to_search' 'new_value'"
                    echo
                    echo "Aborting."
                    exit 1
              fi

              # Check the possible Firefox install directories
              for firefox_dir in ${firefox_dirs}; do
                # If the Firefox directory exists, then Firefox is installed
                if [ -d "${firefox_dir}" ]; then
                  # Make sure the Firefox .cfg file exists and has the appropriate permissions
                  if ! [ -f "${firefox_dir}/${firefox_cfg}" ] ; then
                    touch "${firefox_dir}/${firefox_cfg}"
                    chmod 644 "${firefox_dir}/${firefox_cfg}"
                  fi

                  # If the key exists, change it. Otherwise, add it to the config_file.
                  if LC_ALL=C grep -m 1 -q "^lockPref(\"${key}\", " "${firefox_dir}/${firefox_cfg}"; then
                    sed -i "s/lockPref(\"${key}\".*/lockPref(\"${key}\", ${value});/g" "${firefox_dir}/${firefox_cfg}"
                  else
                    echo "lockPref(\"${key}\", ${value});" >> "${firefox_dir}/${firefox_cfg}"
                  fi
                fi
              done
            }

  - id: function_service_command
    id_namespace: org.ssgproject.RHEL-8
    title: Remediation function service\_command
    description: |
        Shared
        bash remediation function. Not intended to be changed by tailoring.
    type: string
    operator: equals
    definitions:
      - value: |+
            # Function to enable/disable and start/stop services on RHEL and Fedora systems.
            #
            # Example Call(s):
            #
            #     service_command enable bluetooth
            #     service_command disable bluetooth.service
            #
            #     Using xinetd:
            #     service_command disable rsh.socket xinetd=rsh
            #
            function service_command {

            # Load function arguments into local variables
            local service_state=$1
            local service=$2
            local xinetd=$(echo $3 | cut -d'=' -f2)

            # Check sanity of the input
            if [ $# -lt "2" ]
            then
              echo "Usage: service_command 'enable/disable' 'service_name.service'"
              echo
              echo "To enable or disable xinetd services add \'xinetd=service_name\'"
              echo "as the last argument"
              echo "Aborting."
              exit 1
            fi

            # If systemctl is installed, use systemctl command; otherwise, use the service/chkconfig commands
            if [ -f "/usr/bin/systemctl" ] ; then
              service_util="/usr/bin/systemctl"
            else
              service_util="/sbin/service"
              chkconfig_util="/sbin/chkconfig"
            fi

            # If disable is not specified in arg1, set variables to enable services.
            # Otherwise, variables are to be set to disable services.
            if [ "$service_state" != 'disable' ] ; then
              service_state="enable"
              service_operation="start"
              chkconfig_state="on"
            else
              service_state="disable"
              service_operation="stop"
              chkconfig_state="off"
            fi

            # If chkconfig_util is not empty, use chkconfig/service commands.
            if [ "x$chkconfig_util" != x ] ; then
              $service_util $service $service_operation
              $chkconfig_util --level 0123456 $service $chkconfig_state
            else
              $service_util $service_operation $service
              $service_util $service_state $service
              # The service may not be running because it has been started and failed,
              # so let's reset the state so OVAL checks pass.
              # Service should be 'inactive', not 'failed' after reboot though.
              $service_util reset-failed $service
            fi

            # Test if local variable xinetd is empty using non-bashism.
            # If empty, then xinetd is not being used.
            if [ "x$xinetd" != x ] ; then
              grep -qi disable /etc/xinetd.d/$xinetd && \

              if [ "$service_operation" = 'disable' ] ; then
                sed -i "s/disable.*/disable         = no/gI" /etc/xinetd.d/$xinetd
              else
                sed -i "s/disable.*/disable         = yes/gI" /etc/xinetd.d/$xinetd
              fi
            fi

            }

  - id: function_include_mount_options_functions
    id_namespace: org.ssgproject.RHEL-8
    title: Remediation function include\_mount\_options\_functions
    description: |
        Shared
        bash remediation function. Not intended to be changed by tailoring.
    type: string
    operator: equals
    definitions:
      - value: |+
            function include_mount_options_functions {
            	:
            }

            # $1: type of filesystem
            # $2: new mount point option
            # $3: filesystem of new mount point (used when adding new entry in fstab)
            # $4: mount type of new mount point (used when adding new entry in fstab)
            function ensure_mount_option_for_vfstype {
                    local _vfstype="$1" _new_opt="$2" _filesystem=$3 _type=$4 _vfstype_points=()
                    _vfstype_points=($(grep -E "[[:space:]]$_vfstype[[:space:]]" /etc/fstab | awk '{print $2}'))

                    for _vfstype_point in "${_vfstype_points[@]}"
                    do
                            ensure_mount_option_in_fstab "$_vfstype_point" "$_new_opt" "$_filesystem" "$_type"
                    done
            }

            # $1: mount point
            # $2: new mount point option
            # $3: device or virtual string (used when adding new entry in fstab)
            # $4: mount type of mount point (used when adding new entry in fstab)
            function ensure_mount_option_in_fstab {
            	local _mount_point="$1" _new_opt="$2" _device=$3 _type=$4
            	local _mount_point_match_regexp="" _previous_mount_opts=""
            	_mount_point_match_regexp="$(get_mount_point_regexp "$_mount_point")"

            	if [ $(grep -c "$_mount_point_match_regexp" /etc/fstab ) -eq 0 ]; then
            		# runtime opts without some automatic kernel/userspace-added defaults
            		_previous_mount_opts=$(grep "$_mount_point_match_regexp" /etc/mtab | awk '{print $4}' \
            					| sed -E "s/(rw|defaults|seclabel|${_new_opt})(,|$)//g;s/,$//")
            		[ "$_previous_mount_opts" ] && _previous_mount_opts+=","
            		echo "${_device} ${_mount_point} ${_type} defaults,${_previous_mount_opts}${_new_opt} 0 0" >> /etc/fstab
            	elif [ $(grep "$_mount_point_match_regexp" /etc/fstab | grep -c "$_new_opt" ) -eq 0 ]; then
            		_previous_mount_opts=$(grep "$_mount_point_match_regexp" /etc/fstab | awk '{print $4}')
            		sed -i "s|\(${_mount_point_match_regexp}.*${_previous_mount_opts}\)|\1,${_new_opt}|" /etc/fstab
            	fi
            }

            # $1: mount point
            function get_mount_point_regexp {
            		printf "[[:space:]]%s[[:space:]]" "$1"
            }

            # $1: mount point
            function assert_mount_point_in_fstab {
            	local _mount_point_match_regexp
            	_mount_point_match_regexp="$(get_mount_point_regexp "$1")"
            	grep "$_mount_point_match_regexp" -q /etc/fstab \
            		|| { echo "The mount point '$1' is not even in /etc/fstab, so we can't set up mount options" >&2; return 1; }
            }

            # $1: mount point
            function remove_defaults_from_fstab_if_overriden {
            	local _mount_point_match_regexp
            	_mount_point_match_regexp="$(get_mount_point_regexp "$1")"
            	if $(grep "$_mount_point_match_regexp" /etc/fstab | grep -q "defaults,")
            	then
            		sed -i "s|\(${_mount_point_match_regexp}.*\)defaults,|\1|" /etc/fstab
            	fi
            }

            # $1: mount point
            function ensure_partition_is_mounted {
            	local _mount_point="$1"
            	mkdir -p "$_mount_point" || return 1
            	if mountpoint -q "$_mount_point"; then
            		mount -o remount --target "$_mount_point"
            	else
            		mount --target "$_mount_point"
            	fi
            }

  - id: function_create_audit_remediation_unsuccessful_file_modification_detailed
    id_namespace: org.ssgproject.RHEL-8
    title: |
        Remediation function
        create\_audit\_remediation\_unsuccessful\_file\_modification\_detailed
    description: |
        Shared
        bash remediation function. Not intended to be changed by tailoring.
    type: string
    operator: equals
    definitions:
      - value: |+
            function create_audit_remediation_unsuccessful_file_modification_detailed {
            	mkdir -p "$(dirname "$1")"
            	# The - option to mark a here document limit string (<<-EOF) suppresses leading tabs (but not spaces) in the output.
            	cat <<-EOF > "$1"
            		## This content is a section of an Audit config snapshot recommended for RHEL8 sytems that target OSPP compliance.
            		## The following content has been retreived on 2019-03-11 from: https://github.com/linux-audit/audit-userspace/blob/master/rules/30-ospp-v42.rules

            		## The purpose of these rules is to meet the requirements for Operating
            		## System Protection Profile (OSPP)v4.2. These rules depends on having
            		## 10-base-config.rules, 11-loginuid.rules, and 43-module-load.rules installed.

            		## Unsuccessful file creation (open with O_CREAT)
            		-a always,exit -F arch=b32 -S openat,open_by_handle_at -F a2&0100 -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-create
            		-a always,exit -F arch=b64 -S openat,open_by_handle_at -F a2&0100 -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-create
            		-a always,exit -F arch=b32 -S open -F a1&0100 -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-create
            		-a always,exit -F arch=b64 -S open -F a1&0100 -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-create
            		-a always,exit -F arch=b32 -S openat,open_by_handle_at -F a2&0100 -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-create
            		-a always,exit -F arch=b64 -S openat,open_by_handle_at -F a2&0100 -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-create
            		-a always,exit -F arch=b32 -S open -F a1&0100 -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-create
            		-a always,exit -F arch=b64 -S open -F a1&0100 -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-create
            		-a always,exit -F arch=b32 -S creat -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-create
            		-a always,exit -F arch=b64 -S creat -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-create
            		-a always,exit -F arch=b32 -S creat -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-create
            		-a always,exit -F arch=b64 -S creat -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-create

            		## Unsuccessful file modifications (open for write or truncate)
            		-a always,exit -F arch=b32 -S openat,open_by_handle_at -F a2&01003 -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification
            		-a always,exit -F arch=b64 -S openat,open_by_handle_at -F a2&01003 -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification
            		-a always,exit -F arch=b32 -S open -F a1&01003 -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification
            		-a always,exit -F arch=b64 -S open -F a1&01003 -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification
            		-a always,exit -F arch=b32 -S openat,open_by_handle_at -F a2&01003 -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification
            		-a always,exit -F arch=b64 -S openat,open_by_handle_at -F a2&01003 -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification
            		-a always,exit -F arch=b32 -S open -F a1&01003 -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification
            		-a always,exit -F arch=b64 -S open -F a1&01003 -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification
            		-a always,exit -F arch=b32 -S truncate,ftruncate -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification
            		-a always,exit -F arch=b64 -S truncate,ftruncate -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification
            		-a always,exit -F arch=b32 -S truncate,ftruncate -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification
            		-a always,exit -F arch=b64 -S truncate,ftruncate -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification

            		## Unsuccessful file access (any other opens) This has to go last.
            		-a always,exit -F arch=b32 -S open,creat,truncate,ftruncate,openat,open_by_handle_at -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-access
            		-a always,exit -F arch=b64 -S open,creat,truncate,ftruncate,openat,open_by_handle_at -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-access
            		-a always,exit -F arch=b32 -S open,creat,truncate,ftruncate,openat,open_by_handle_at -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-access
            		-a always,exit -F arch=b64 -S open,creat,truncate,ftruncate,openat,open_by_handle_at -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-access
            	EOF
            }

  - id: function_disable_prelink
    id_namespace: org.ssgproject.RHEL-8
    title: Remediation function disable\_prelink
    description: |
        Shared
        bash remediation function. Not intended to be changed by tailoring.
    type: string
    operator: equals
    definitions:
      - value: |+
            function disable_prelink {
            	# prelink not installed
            	if test ! -e /etc/sysconfig/prelink -a ! -e /usr/sbin/prelink; then
            		return 0
            	fi

            	if grep -q ^PRELINKING /etc/sysconfig/prelink
            	then
            		sed -i 's/^PRELINKING[:blank:]*=[:blank:]*[:alpha:]*/PRELINKING=no/' /etc/sysconfig/prelink
            	else
            		printf '\n' >> /etc/sysconfig/prelink
            		printf '%s\n' '# Set PRELINKING=no per security requirements' 'PRELINKING=no' >> /etc/sysconfig/prelink
            	fi

            	# Undo previous prelink changes to binaries if prelink is available.
            	if test -x /usr/sbin/prelink; then
            		/usr/sbin/prelink -ua
            	fi
            }

contents: []
---


## /description

XCCDF
form of the various remediation functions as used by remediation scripts
from the SCAP Security Guide Project.
