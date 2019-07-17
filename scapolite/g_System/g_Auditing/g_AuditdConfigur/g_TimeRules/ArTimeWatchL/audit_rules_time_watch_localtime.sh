

# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'
<sub idref="org.ssgproject.RHEL-8:function_fix_audit_watch_rule" use="legacy"/>
fix_audit_watch_rule "auditctl" "/etc/localtime" "wa" "audit_time_rules"
fix_audit_watch_rule "augenrules" "/etc/localtime" "wa" "audit_time_rules"

                
