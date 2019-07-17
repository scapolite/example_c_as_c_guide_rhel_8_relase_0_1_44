
var_password_pam_lcredit="<sub idref="org.ssgproject.RHEL-8:var_password_pam_lcredit" use="legacy"/>"
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/security/pwquality.conf' '^lcredit' $var_password_pam_lcredit 'CCE-80655-4' '%s = %s'

                  
