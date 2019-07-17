
var_auditd_max_log_file="<sub idref="org.ssgproject.RHEL-8:var_auditd_max_log_file" use="legacy"/>"

AUDITCONFIG=/etc/audit/auditd.conf
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append $AUDITCONFIG '^max_log_file' "$var_auditd_max_log_file" "CCE-80681-0"

              
