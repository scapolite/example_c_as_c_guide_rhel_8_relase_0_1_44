
rsyslog_remote_loghost_address="<sub idref="org.ssgproject.RHEL-8:rsyslog_remote_loghost_address" use="legacy"/>"
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/rsyslog.conf' '^\*\.\*' "@@$rsyslog_remote_loghost_address" 'CCE-80863-4' '%s %s'

              
