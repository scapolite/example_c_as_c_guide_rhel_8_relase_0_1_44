---
scapolite:
    class: rule
    version: '0.51'
id: no_insecure_locks_exports
id_namespace: org.ssgproject.RHEL-8
title: Ensure Insecure File Locking is Not Allowed
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-no_insecure_locks_exports:def:1
        href: no_insecure_locks_exports.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-no_insecure_locks_exports_ocil:questionnaire:1
        href: no_insecure_locks_exports.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000764
    relation: ''
---


## /rule

Ensure Insecure File Locking is Not Allowed

## /rationale

Allowing
insecure file locking could allow for sensitive data to be viewed or
edited by an unauthorized user.

## /description

By
default the NFS server requires secure file-lock requests, which require
credentials from the client in order to lock a file. Most NFS clients
send credentials with file lock requests, however, there are a few
clients that do not send credentials when requesting a file-lock,
allowing the client to only be able to lock world-readable files. To get
around this, the `insecure_locks` option can be used so these clients
can access the desired export. This poses a security risk by potentially
allowing the client access to data for which it does not have
authorization. Remove any instances of the `insecure_locks` option from
the file `/etc/exports`.
