
var_auditd_max_log_file_action="<sub idref="org.ssgproject.RHEL-8:var_auditd_max_log_file_action" use="legacy"/>"

AUDITCONFIG=/etc/audit/auditd.conf
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append $AUDITCONFIG '^max_log_file_action' "$var_auditd_max_log_file_action" "CCE-80682-8"

              
