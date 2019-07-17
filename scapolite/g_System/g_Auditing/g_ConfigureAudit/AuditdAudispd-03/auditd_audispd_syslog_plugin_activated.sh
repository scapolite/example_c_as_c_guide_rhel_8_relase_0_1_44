
var_syslog_active="yes"


AUDISP_SYSLOGCONFIG=/etc/audit/plugins.d/syslog.conf
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append $AUDISP_SYSLOGCONFIG '^active' "$var_syslog_active" "CCE-80677-8"

              
