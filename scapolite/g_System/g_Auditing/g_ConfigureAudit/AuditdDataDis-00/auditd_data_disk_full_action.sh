
var_auditd_disk_full_action="<sub idref="org.ssgproject.RHEL-8:var_auditd_disk_full_action" use="legacy"/>"
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append /etc/audit/auditd.conf '^disk_full_action' "$var_auditd_disk_full_action" ""

              
