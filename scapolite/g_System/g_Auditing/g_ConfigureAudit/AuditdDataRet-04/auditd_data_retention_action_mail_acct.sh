
var_auditd_action_mail_acct="<sub idref="org.ssgproject.RHEL-8:var_auditd_action_mail_acct" use="legacy"/>"

AUDITCONFIG=/etc/audit/auditd.conf
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append $AUDITCONFIG '^action_mail_acct' "$var_auditd_action_mail_acct" "CCE-80678-6"

              
