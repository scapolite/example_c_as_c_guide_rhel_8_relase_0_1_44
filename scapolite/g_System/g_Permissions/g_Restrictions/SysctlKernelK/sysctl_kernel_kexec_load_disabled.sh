

#
# Set runtime for kernel.kexec_load_disabled
#
/sbin/sysctl -q -n -w kernel.kexec_load_disabled=1

#
# If kernel.kexec_load_disabled present in /etc/sysctl.conf, change value to "1"
#	else, add "kernel.kexec_load_disabled = 1" to /etc/sysctl.conf
#
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/sysctl.conf' '^kernel.kexec_load_disabled' "1" 'CCE-80952-5'

              
