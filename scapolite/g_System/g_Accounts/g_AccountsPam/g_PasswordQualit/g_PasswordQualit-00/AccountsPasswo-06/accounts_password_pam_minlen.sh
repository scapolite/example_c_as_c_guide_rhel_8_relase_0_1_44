
var_password_pam_minlen="<sub idref="org.ssgproject.RHEL-8:var_password_pam_minlen" use="legacy"/>"
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/security/pwquality.conf' '^minlen' $var_password_pam_minlen 'CCE-80656-2' '%s = %s'

                  
