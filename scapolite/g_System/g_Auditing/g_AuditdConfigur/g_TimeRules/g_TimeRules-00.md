---
scapolite:
    class: group
    version: '0.51'
id: audit_time_rules
id_namespace: org.ssgproject.RHEL-8
title: Records Events that Modify Date and Time Information
description: <see below>
contents:
  - class: rule_ref
    idref: audit_rules_time_stime
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Attempts to Alter Time Through stime
  - class: rule_ref
    idref: audit_rules_time_clock_settime
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Attempts to Alter Time Through clock\_settime
  - class: rule_ref
    idref: audit_rules_time_adjtimex
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record attempts to alter time through adjtimex
  - class: rule_ref
    idref: audit_rules_time_settimeofday
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record attempts to alter time through settimeofday
  - class: rule_ref
    idref: audit_rules_time_watch_localtime
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Attempts to Alter the localtime File
---


## /description

Arbitrary
changes to the system time can be used to obfuscate nefarious activities
in log files, as well as to confuse network services that are highly
dependent upon an accurate system time. All changes to the system time
should be audited.
