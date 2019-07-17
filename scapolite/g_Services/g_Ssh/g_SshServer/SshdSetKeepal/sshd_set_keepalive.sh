
var_sshd_set_keepalive="<sub idref="org.ssgproject.RHEL-8:var_sshd_set_keepalive" use="legacy"/>"
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/ssh/sshd_config' '^ClientAliveCountMax' "$var_sshd_set_keepalive" 'CCE-80907-9' '%s %s'

              
