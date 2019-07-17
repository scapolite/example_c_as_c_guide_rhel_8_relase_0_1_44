
var_selinux_state="<sub idref="org.ssgproject.RHEL-8:var_selinux_state" use="legacy"/>"
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/sysconfig/selinux' '^SELINUX=' $var_selinux_state 'CCE-80869-1' '%s=%s'

fixfiles onboot
fixfiles -f relabel

            
