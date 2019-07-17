
var_password_pam_dcredit="<sub idref="org.ssgproject.RHEL-8:var_password_pam_dcredit" use="legacy"/>"
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/security/pwquality.conf' '^dcredit' $var_password_pam_dcredit 'CCE-80653-9' '%s = %s'

                  
