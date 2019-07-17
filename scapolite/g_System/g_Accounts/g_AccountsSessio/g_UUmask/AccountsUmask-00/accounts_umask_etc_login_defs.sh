
var_accounts_user_umask="<sub idref="org.ssgproject.RHEL-8:var_accounts_user_umask" use="legacy"/>"
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/login.defs' '^UMASK' "$var_accounts_user_umask" '' '%s %s'

                
