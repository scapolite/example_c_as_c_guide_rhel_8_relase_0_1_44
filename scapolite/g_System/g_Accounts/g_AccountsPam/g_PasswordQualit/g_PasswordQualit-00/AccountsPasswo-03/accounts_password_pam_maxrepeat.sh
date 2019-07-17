
var_password_pam_maxrepeat="<sub idref="org.ssgproject.RHEL-8:var_password_pam_maxrepeat" use="legacy"/>"
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/security/pwquality.conf' '^maxrepeat' $var_password_pam_maxrepeat '' '%s = %s'

                  
