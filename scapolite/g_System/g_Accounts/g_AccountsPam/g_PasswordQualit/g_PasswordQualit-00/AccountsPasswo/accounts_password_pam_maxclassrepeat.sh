
var_password_pam_maxclassrepeat="<sub idref="org.ssgproject.RHEL-8:var_password_pam_maxclassrepeat" use="legacy"/>"
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/security/pwquality.conf' '^maxclassrepeat' $var_password_pam_maxclassrepeat '' '%s = %s'

                  
