

#
# Set runtime for kernel.yama.ptrace_scope
#
/sbin/sysctl -q -n -w kernel.yama.ptrace_scope=1

#
# If kernel.yama.ptrace_scope present in /etc/sysctl.conf, change value to "1"
#	else, add "kernel.yama.ptrace_scope = 1" to /etc/sysctl.conf
#
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/sysctl.conf' '^kernel.yama.ptrace_scope' "1" 'CCE-80953-3'

              
