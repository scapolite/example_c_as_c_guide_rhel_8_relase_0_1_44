---
scapolite:
    class: group
    version: '0.51'
id: rpm_verification
id_namespace: org.ssgproject.RHEL-8
title: Verify Integrity with RPM
description: <see below>
contents:
  - class: rule_ref
    idref: rpm_verify_ownership
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify and Correct Ownership with RPM
  - class: rule_ref
    idref: rpm_verify_hashes
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify File Hashes with RPM
  - class: rule_ref
    idref: rpm_verify_permissions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify and Correct File Permissions with RPM
---


## /description

The
RPM package management system includes the ability to verify the
integrity of installed packages by comparing the installed files with
information about the files taken from the package metadata stored in
the RPM database. Although an attacker could corrupt the RPM database
(analogous to attacking the AIDE database as described above), this
check can still reveal modification of important files. To list which
files on the system differ from what is expected by the RPM database:

``` 
$ rpm -qVa
```

See the man page for `rpm` to see a complete explanation of each column.
