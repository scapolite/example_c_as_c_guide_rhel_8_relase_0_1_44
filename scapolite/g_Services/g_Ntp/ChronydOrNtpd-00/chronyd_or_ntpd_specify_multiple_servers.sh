
var_multiple_time_servers="<sub idref="org.ssgproject.RHEL-8:var_multiple_time_servers" use="legacy"/>"

# Invoke the function without args, so its body is substituded right here.
<sub idref="org.ssgproject.RHEL-8:function_ensure_there_are_servers_in_ntp_compatible_config_file" use="legacy"/>
ensure_there_are_servers_in_ntp_compatible_config_file

config_file="/etc/ntp.conf"
/usr/sbin/pidof ntpd || config_file="/etc/chrony.conf"

[ "$(grep -c '^server' "$config_file")" -gt 1 ] || ensure_there_are_servers_in_ntp_compatible_config_file "$config_file" "$var_multiple_time_servers"

          
