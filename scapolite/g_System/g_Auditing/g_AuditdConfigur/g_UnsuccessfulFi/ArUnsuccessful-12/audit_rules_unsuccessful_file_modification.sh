

# Perform the remediation of the syscall rule
# Retrieve hardware architecture of the underlying system
[ $(getconf LONG_BIT) = "32" ] && RULE_ARCHS=("b32") || RULE_ARCHS=("b32" "b64")

for ARCH in "${RULE_ARCHS[@]}"
do

	# First fix the -EACCES requirement
	PATTERN="-a always,exit -F arch=$ARCH -S .* -F exit=-EACCES -F auid>=1000 -F auid!=unset -k *"
	# Use escaped BRE regex to specify rule group
	GROUP="\(creat\|open\|truncate\)"
	FULL_RULE="-a always,exit -F arch=$ARCH -S creat -S open -S openat -S open_by_handle_at -S truncate -S ftruncate -F exit=-EACCES -F auid>=1000 -F auid!=unset -k access"
	# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'
<sub idref="org.ssgproject.RHEL-8:function_fix_audit_syscall_rule" use="legacy"/>
	fix_audit_syscall_rule "auditctl" "$PATTERN" "$GROUP" "$ARCH" "$FULL_RULE"
	fix_audit_syscall_rule "augenrules" "$PATTERN" "$GROUP" "$ARCH" "$FULL_RULE"

	# Then fix the -EPERM requirement
	PATTERN="-a always,exit -F arch=$ARCH -S .* -F exit=-EPERM -F auid>=1000 -F auid!=unset -k *"
	# No need to change content of $GROUP variable - it's the same as for -EACCES case above
	FULL_RULE="-a always,exit -F arch=$ARCH -S creat -S open -S openat -S open_by_handle_at -S truncate -S ftruncate -F exit=-EPERM -F auid>=1000 -F auid!=unset -k access"
	# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'
<sub idref="org.ssgproject.RHEL-8:function_fix_audit_syscall_rule" use="legacy"/>
	fix_audit_syscall_rule "auditctl" "$PATTERN" "$GROUP" "$ARCH" "$FULL_RULE"
	fix_audit_syscall_rule "augenrules" "$PATTERN" "$GROUP" "$ARCH" "$FULL_RULE"

done

                
