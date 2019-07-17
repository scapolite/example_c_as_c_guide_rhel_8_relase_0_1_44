
var_auditd_num_logs="<sub idref="org.ssgproject.RHEL-8:var_auditd_num_logs" use="legacy"/>"

AUDITCONFIG=/etc/audit/auditd.conf
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append $AUDITCONFIG '^num_logs' "$var_auditd_num_logs" "CCE-80683-6"

              
