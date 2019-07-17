
sshd_idle_timeout_value="<sub idref="org.ssgproject.RHEL-8:sshd_idle_timeout_value" use="legacy"/>"
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/ssh/sshd_config' '^ClientAliveInterval' $sshd_idle_timeout_value 'CCE-80906-1' '%s %s'

              
