

# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'
<sub idref="org.ssgproject.RHEL-8:function_fix_audit_watch_rule" use="legacy"/>
fix_audit_watch_rule "auditctl" "/etc/passwd" "wa" "audit_rules_usergroup_modification"
fix_audit_watch_rule "augenrules" "/etc/passwd" "wa" "audit_rules_usergroup_modification"

              
