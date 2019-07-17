---
scapolite:
    class: rule
    version: '0.51'
id: httpd_remove_backups
id_namespace: org.ssgproject.RHEL-8
title: Backup interactive scripts on the production web server are prohibited
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-httpd_remove_backups_ocil:questionnaire:1
        href: httpd_remove_backups.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG420
    relation: ''
---


## /rule

Backup interactive scripts on the production web server are prohibited

## /rationale

Such
backup copies contain the same sensitive information as the actual
scripts being executed and, as such, are useful to malicious users.
Techniques and systems exist today that search web servers for such
files and are able to exploit the information contained in them. Backup
copies of files are automatically created by some text editors such such
as emacs and VIM. Editors may write a backup file with an extension \~
added to the name of the original file. The edit plus editor will create
a .bak file. Of course, this would imply the presence and use of
development tools on the web server, which is a finding under WG130.
Having backup scripts on the web server provides one more opportunity
for malicious persons to view these scripts and use the information
found in them.

## /description

Copies
of backup files will not execute on the server, but they can be read by
the anonymous user if special precautions are not taken.
