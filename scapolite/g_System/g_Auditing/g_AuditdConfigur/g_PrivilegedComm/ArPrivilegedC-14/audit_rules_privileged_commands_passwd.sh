

PATTERN="-a always,exit -F path=/usr/bin/passwd\\s\\+.*"
GROUP="privileged"
# Although the fix doesn't use ARCH, we reset it because it could have been set by some other remediation
ARCH=""
FULL_RULE="-a always,exit -F path=/usr/bin/passwd -F perm=x -F auid>=1000 -F auid!=unset -F key=privileged"
# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'
<sub idref="org.ssgproject.RHEL-8:function_fix_audit_syscall_rule" use="legacy"/>
fix_audit_syscall_rule "auditctl" "$PATTERN" "$GROUP" "$ARCH" "$FULL_RULE"
fix_audit_syscall_rule "augenrules" "$PATTERN" "$GROUP" "$ARCH" "$FULL_RULE"

                
