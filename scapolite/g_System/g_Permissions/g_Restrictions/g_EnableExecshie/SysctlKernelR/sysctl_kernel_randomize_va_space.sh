

#
# Set runtime for kernel.randomize_va_space
#
/sbin/sysctl -q -n -w kernel.randomize_va_space=2

#
# If kernel.randomize_va_space present in /etc/sysctl.conf, change value to "2"
#	else, add "kernel.randomize_va_space = 2" to /etc/sysctl.conf
#
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/sysctl.conf' '^kernel.randomize_va_space' "2" 'CCE-80916-0'

                
