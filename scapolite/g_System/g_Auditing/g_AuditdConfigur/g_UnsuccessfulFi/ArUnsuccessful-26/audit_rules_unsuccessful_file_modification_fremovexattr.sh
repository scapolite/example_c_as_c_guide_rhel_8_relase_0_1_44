

# First perform the remediation of the syscall rule
# Retrieve hardware architecture of the underlying system
[ "$(getconf LONG_BIT)" = "32" ] && RULE_ARCHS=("b32") || RULE_ARCHS=("b32" "b64")

for ARCH in "${RULE_ARCHS[@]}"
do
	PATTERN="-a always,exit -F arch=$ARCH -S fremovexattr -F exit=-EACCES.*"
	GROUP="access"
	FULL_RULE="-a always,exit -F arch=$ARCH -S fremovexattr -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=access"
	# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'
<sub idref="org.ssgproject.RHEL-8:function_fix_audit_syscall_rule" use="legacy"/>
	fix_audit_syscall_rule "auditctl" "$PATTERN" "$GROUP" "$ARCH" "$FULL_RULE"
	fix_audit_syscall_rule "augenrules" "$PATTERN" "$GROUP" "$ARCH" "$FULL_RULE"
done

for ARCH in "${RULE_ARCHS[@]}"
do
        PATTERN="-a always,exit -F arch=$ARCH -S fremovexattr -F exit=-EPERM.*"
        GROUP="access"
        FULL_RULE="-a always,exit -F arch=$ARCH -S fremovexattr -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=access"
        # Perform the remediation for both possible tools: 'auditctl' and 'augenrules'
<sub idref="org.ssgproject.RHEL-8:function_fix_audit_syscall_rule" use="legacy"/>
        fix_audit_syscall_rule "auditctl" "$PATTERN" "$GROUP" "$ARCH" "$FULL_RULE"
        fix_audit_syscall_rule "augenrules" "$PATTERN" "$GROUP" "$ARCH" "$FULL_RULE"
done

                
