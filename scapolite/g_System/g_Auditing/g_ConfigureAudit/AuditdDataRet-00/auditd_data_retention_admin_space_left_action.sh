
var_auditd_admin_space_left_action="<sub idref="org.ssgproject.RHEL-8:var_auditd_admin_space_left_action" use="legacy"/>"

AUDITCONFIG=/etc/audit/auditd.conf
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append $AUDITCONFIG '^admin_space_left_action' "$var_auditd_admin_space_left_action" "CCE-80679-4"

              
