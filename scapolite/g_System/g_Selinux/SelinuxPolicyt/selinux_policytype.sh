
var_selinux_policy_name="<sub idref="org.ssgproject.RHEL-8:var_selinux_policy_name" use="legacy"/>"
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/sysconfig/selinux' '^SELINUXTYPE=' $var_selinux_policy_name 'CCE-80868-3' '%s=%s'

            
