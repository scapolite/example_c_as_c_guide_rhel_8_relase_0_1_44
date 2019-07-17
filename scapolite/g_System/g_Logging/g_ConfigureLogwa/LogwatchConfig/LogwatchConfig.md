---
scapolite:
    class: rule
    version: '0.51'
id: logwatch_configured_hostlimit
id_namespace: org.ssgproject.RHEL-8
title: Configure Logwatch HostLimit Line
rule: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-logwatch_configured_hostlimit:def:1
        href: logwatch_configured_hostlimit.oval.xml
---


## /rule

Configure Logwatch HostLimit Line

## /description

On
a central logserver, you want Logwatch to summarize all syslog entries,
including those which did not originate on the logserver itself. The
`HostLimit` setting tells Logwatch to report on all hosts, not just the
one on which it is running.

``` 
 HostLimit = no 
```
