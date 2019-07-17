
var_auditd_space_left_action="<sub idref="org.ssgproject.RHEL-8:var_auditd_space_left_action" use="legacy"/>"

#
# If space_left_action present in /etc/audit/auditd.conf, change value
# to var_auditd_space_left_action, else
# add "space_left_action = $var_auditd_space_left_action" to /etc/audit/auditd.conf
#

AUDITCONFIG=/etc/audit/auditd.conf
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append $AUDITCONFIG '^space_left_action' "$var_auditd_space_left_action" "CCE-80684-4"

              
