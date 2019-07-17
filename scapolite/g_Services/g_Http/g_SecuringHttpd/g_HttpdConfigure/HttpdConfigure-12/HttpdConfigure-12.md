---
scapolite:
    class: rule
    version: '0.51'
id: httpd_configure_remote_session_encryption
id_namespace: org.ssgproject.RHEL-8
title: Ensure Remote Administrative Access Is Encrypted
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: high
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-httpd_configure_remote_session_encryption_ocil:questionnaire:1
        href: httpd_configure_remote_session_encryption.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG230
    relation: ''
---


## /rule

Ensure Remote Administrative Access Is Encrypted

## /rationale

Logging
into a web server remotely using an unencrypted protocol or service when
performing updates and maintenance is a major risk. Data, such as user
account, is transmitted in plaintext and can easily be compromised. When
performing remote administrative tasks, a protocol or service that
encrypts the communication channel must be used.  
  
An alternative to remote administration of the web server is to perform
web server administration locally at the console. Local administration
at the console implies physical access to the server.

## /description

Ensure
that the SSH server service is enabled. The `sshd` service can be
enabled with the following command:

``` 
$ sudo systemctl enable sshd.service
```
