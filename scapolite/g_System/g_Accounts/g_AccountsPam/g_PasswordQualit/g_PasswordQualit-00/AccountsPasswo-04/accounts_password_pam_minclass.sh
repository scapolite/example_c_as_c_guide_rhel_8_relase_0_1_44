
var_password_pam_minclass="<sub idref="org.ssgproject.RHEL-8:var_password_pam_minclass" use="legacy"/>"
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/security/pwquality.conf' '^minclass' $var_password_pam_minclass '' '%s = %s'

                  
