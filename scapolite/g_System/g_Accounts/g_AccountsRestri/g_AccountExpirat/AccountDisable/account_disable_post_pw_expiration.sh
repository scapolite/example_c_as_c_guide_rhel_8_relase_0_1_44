
var_account_disable_post_pw_expiration="<sub idref="org.ssgproject.RHEL-8:var_account_disable_post_pw_expiration" use="legacy"/>"
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/default/useradd' '^INACTIVE' "$var_account_disable_post_pw_expiration" 'CCE-80954-1' '%s=%s'

                
