

#
# Set runtime for kernel.dmesg_restrict
#
/sbin/sysctl -q -n -w kernel.dmesg_restrict=1

#
# If kernel.dmesg_restrict present in /etc/sysctl.conf, change value to "1"
#	else, add "kernel.dmesg_restrict = 1" to /etc/sysctl.conf
#
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/sysctl.conf' '^kernel.dmesg_restrict' "1" 'CCE-80913-7'

              
