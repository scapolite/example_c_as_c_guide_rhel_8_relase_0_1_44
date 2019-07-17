
var_password_pam_ucredit="<sub idref="org.ssgproject.RHEL-8:var_password_pam_ucredit" use="legacy"/>"
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/security/pwquality.conf' '^ucredit' $var_password_pam_ucredit 'CCE-80665-3' '%s = %s'

                  
