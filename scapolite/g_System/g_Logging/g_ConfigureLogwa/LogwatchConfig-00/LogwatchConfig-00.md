---
scapolite:
    class: rule
    version: '0.51'
id: logwatch_configured_splithosts
id_namespace: org.ssgproject.RHEL-8
title: Configure Logwatch SplitHosts Line
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
        idref: oval:ssg-logwatch_configured_splithosts:def:1
        href: logwatch_configured_splithosts.oval.xml
---


## /rule

Configure Logwatch SplitHosts Line

## /description

If
`SplitHosts` is set, Logwatch will separate entries by hostname. This
makes the report longer but significantly more usable. If it is not set,
then Logwatch will not report which host generated a given log entry,
and that information is almost always necessary

``` 
 SplitHosts = yes 
```
