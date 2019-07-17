
var_password_pam_difok="<sub idref="org.ssgproject.RHEL-8:var_password_pam_difok" use="legacy"/>"
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/security/pwquality.conf' '^difok' $var_password_pam_difok 'CCE-80654-7' '%s = %s'

                  
