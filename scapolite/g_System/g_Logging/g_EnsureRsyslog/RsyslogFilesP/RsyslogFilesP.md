---
scapolite:
    class: rule
    version: '0.51'
id: rsyslog_files_permissions
id_namespace: org.ssgproject.RHEL-8
title: Ensure System Log Files Have Correct Permissions
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: rsyslog_files_permissions.sh
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-rsyslog_files_permissions_ocil:questionnaire:1
        href: rsyslog_files_permissions.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80862-6
    relation: ''
  - system: org.scapolite.unknown
    idref: 4.2.1.3
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-001314
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: SI-11
    relation: ''
  - system: https://www.pcisecuritystandards.org/documents/PCI_DSS_v3-1.pdf
    idref: Req-10.5.1
    relation: ''
  - system: https://www.pcisecuritystandards.org/documents/PCI_DSS_v3-1.pdf
    idref: Req-10.5.2
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80862-6
    relation: ''
---


## /rule

Ensure System Log Files Have Correct Permissions

## /rationale

Log
files can contain valuable information regarding system configuration.
If the system log files are not protected unauthorized users could
change the logged data, eliminating their forensic value.

## /description

The
file permissions for all log files written by `rsyslog` should be set to
600, or more restrictive. These log files are determined by the second
part of each Rule line in `/etc/rsyslog.conf` and typically all appear
in `/var/log`. For each log file *LOGFILE* referenced in
`/etc/rsyslog.conf`, run the following command to inspect the file\'s
permissions:

``` 
$ ls -l LOGFILE
```

If the permissions are not 600 or more restrictive, run the following
command to correct this:

``` 
$ sudo chmod 0600 LOGFILE
```

\"
