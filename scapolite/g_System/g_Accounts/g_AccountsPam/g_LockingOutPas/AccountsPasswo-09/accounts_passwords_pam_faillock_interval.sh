<sub idref="org.ssgproject.RHEL-8:function_include_set_faillock_option" use="legacy"/>
include_set_faillock_option

var_accounts_passwords_pam_faillock_fail_interval="<sub idref="org.ssgproject.RHEL-8:var_accounts_passwords_pam_faillock_fail_interval" use="legacy"/>"

AUTH_FILES[0]="/etc/pam.d/system-auth"
AUTH_FILES[1]="/etc/pam.d/password-auth"

for pam_file in "${AUTH_FILES[@]}"
do
	set_faillock_option "$pam_file" "fail_interval" "$var_accounts_passwords_pam_faillock_fail_interval"
done

                
