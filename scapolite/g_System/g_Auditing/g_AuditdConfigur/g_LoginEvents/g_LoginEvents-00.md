---
scapolite:
    class: group
    version: '0.51'
id: audit_login_events
id_namespace: org.ssgproject.RHEL-8
title: Record Attempts to Alter Logon and Logout Events
description: <see below>
contents:
  - class: rule_ref
    idref: audit_rules_login_events_lastlog
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Attempts to Alter Logon and Logout Events - lastlog
  - class: rule_ref
    idref: audit_rules_login_events_tallylog
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Attempts to Alter Logon and Logout Events - tallylog
  - class: rule_ref
    idref: audit_rules_login_events
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Attempts to Alter Logon and Logout Events
  - class: rule_ref
    idref: audit_rules_login_events_faillock
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Attempts to Alter Logon and Logout Events - faillock
---


## /description

The
audit system already collects login information for all users and root.
If the `auditd` daemon is configured to use the `augenrules` program to
read audit rules during daemon startup (the default), add the following
lines to a file with suffix `.rules` in the directory
`/etc/audit/rules.d` in order to watch for attempted manual edits of
files involved in storing logon events:

``` 
-w /var/log/tallylog -p wa -k logins
-w /var/run/faillock/ -p wa -k logins
-w /var/log/lastlog -p wa -k logins
```

If the `auditd` daemon is configured to use the `auditctl` utility to
read audit rules during daemon startup, add the following lines to
`/etc/audit/audit.rules` file in order to watch for unattempted manual
edits of files involved in storing logon events:

``` 
-w /var/log/tallylog -p wa -k logins
-w /var/run/faillock/ -p wa -k logins
-w /var/log/lastlog -p wa -k logins
```
