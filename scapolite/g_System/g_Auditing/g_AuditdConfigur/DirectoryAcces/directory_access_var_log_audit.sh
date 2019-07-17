

PATTERN="-a always,exit -F path=/var/log/audit/\\s\\+.*"
GROUP="access-audit-trail"
FULL_RULE="-a always,exit -F dir=/var/log/audit/ -F perm=r -F auid>=1000 -F auid!=unset -F key=access-audit-trail"
# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'
<sub idref="org.ssgproject.RHEL-8:function_fix_audit_syscall_rule" use="legacy"/>
fix_audit_syscall_rule "auditctl" "$PATTERN" "$GROUP" "$ARCH" "$FULL_RULE"
fix_audit_syscall_rule "augenrules" "$PATTERN" "$GROUP" "$ARCH" "$FULL_RULE"

              
