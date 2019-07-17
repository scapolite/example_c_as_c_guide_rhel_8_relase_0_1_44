

# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'
<sub idref="org.ssgproject.RHEL-8:function_fix_audit_watch_rule" use="legacy"/>
fix_audit_watch_rule "auditctl" "/var/log/tallylog" "wa" "logins"
fix_audit_watch_rule "augenrules" "/var/log/tallylog" "wa" "logins"
<sub idref="org.ssgproject.RHEL-8:function_fix_audit_watch_rule" use="legacy"/>
fix_audit_watch_rule "auditctl" "/var/run/faillock/" "wa" "logins"
fix_audit_watch_rule "augenrules" "/var/run/faillock/" "wa" "logins"
<sub idref="org.ssgproject.RHEL-8:function_fix_audit_watch_rule" use="legacy"/>
fix_audit_watch_rule "auditctl" "/var/log/lastlog" "wa" "logins"
fix_audit_watch_rule "augenrules" "/var/log/lastlog" "wa" "logins"

                
