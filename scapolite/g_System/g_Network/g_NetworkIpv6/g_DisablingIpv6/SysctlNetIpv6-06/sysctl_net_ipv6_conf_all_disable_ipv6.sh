

#
# Set runtime for net.ipv6.conf.all.disable_ipv6
#
/sbin/sysctl -q -n -w net.ipv6.conf.all.disable_ipv6=1

#
# If net.ipv6.conf.all.disable_ipv6 present in /etc/sysctl.conf, change value to "1"
#	else, add "net.ipv6.conf.all.disable_ipv6 = 1" to /etc/sysctl.conf
#
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/sysctl.conf' '^net.ipv6.conf.all.disable_ipv6' "1" ''

                
