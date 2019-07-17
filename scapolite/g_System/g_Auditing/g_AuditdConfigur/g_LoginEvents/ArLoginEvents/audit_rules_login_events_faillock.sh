

# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'
<sub idref="org.ssgproject.RHEL-8:function_fix_audit_watch_rule" use="legacy"/>
fix_audit_watch_rule "auditctl" "/var/run/faillock" "wa" "logins"
fix_audit_watch_rule "augenrules" "/var/run/faillock" "wa" "logins"

                
