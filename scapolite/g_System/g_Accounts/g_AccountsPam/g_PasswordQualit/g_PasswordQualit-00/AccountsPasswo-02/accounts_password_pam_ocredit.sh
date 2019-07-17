
var_password_pam_ocredit="<sub idref="org.ssgproject.RHEL-8:var_password_pam_ocredit" use="legacy"/>"
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/security/pwquality.conf' '^ocredit' $var_password_pam_ocredit 'CCE-80663-8' '%s = %s'

                  
