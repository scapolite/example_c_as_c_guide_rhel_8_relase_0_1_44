

# Perform the remediation
# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'
<sub idref="org.ssgproject.RHEL-8:function_fix_audit_watch_rule" use="legacy"/>
fix_audit_watch_rule "auditctl" "/var/run/utmp" "wa" "session"
fix_audit_watch_rule "augenrules" "/var/run/utmp" "wa" "session"
<sub idref="org.ssgproject.RHEL-8:function_fix_audit_watch_rule" use="legacy"/>
fix_audit_watch_rule "auditctl" "/var/log/btmp" "wa" "session"
fix_audit_watch_rule "augenrules" "/var/log/btmp" "wa" "session"
<sub idref="org.ssgproject.RHEL-8:function_fix_audit_watch_rule" use="legacy"/>
fix_audit_watch_rule "auditctl" "/var/log/wtmp" "wa" "session"
fix_audit_watch_rule "augenrules" "/var/log/wtmp" "wa" "session"

              
