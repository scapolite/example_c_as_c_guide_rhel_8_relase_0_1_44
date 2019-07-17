---
scapolite:
    class: rule
    version: '0.51'
id: sebool_awstats_purge_apache_log_files
id_namespace: org.ssgproject.RHEL-8
title: Disable the awstats\_purge\_apache\_log\_files SELinux Boolean
rule: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-sebool_awstats_purge_apache_log_files_ocil:questionnaire:1
        href: sebool_awstats_purge_apache_log_files.ocil.xml
crossrefs:
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.7.2
    relation: ''
---


## /rule

Disable the awstats\_purge\_apache\_log\_files SELinux Boolean

## /description

By
default, the SELinux boolean `awstats_purge_apache_log_files` is
disabled. If this setting is enabled, it should be disabled. To disable
the `awstats_purge_apache_log_files` SELinux boolean, run the following
command:

``` 
$ sudo setsebool -P awstats_purge_apache_log_files off
```
