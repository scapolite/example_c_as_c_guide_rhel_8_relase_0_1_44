---
scapolite:
    class: rule
    version: '0.51'
id: nfs_no_anonymous
id_namespace: org.ssgproject.RHEL-8
title: Specify UID and GID for Anonymous NFS Connections
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-nfs_no_anonymous_ocil:questionnaire:1
        href: nfs_no_anonymous.ocil.xml
---


## /rule

Specify UID and GID for Anonymous NFS Connections

## /rationale

Specifying
the anonymous UID and GID ensures that the remote root user is mapped to
a local account which has no permissions on the system.

## /description

To
specify the UID and GID for remote root users, edit the `/etc/exports`
file and add the following for each export:

``` 
anonuid=value greater than UID_MAX from /etc/login.defs
anongid=value greater than GID_MAX from /etc/login.defs
```

Note that a value of \"-1\" is technically acceptable as this will
randomize the `anonuid` and `anongid` values on a Red Hat Enterprise
Linux 6 based NFS server. While acceptable from a security perspective,
a value of `-1` may cause interoperability issues, particularly with Red
Hat Enterprise Linux 7 client systems. Alternatively, functionally
equivalent values of 60001, 65534, 65535 may be used.
