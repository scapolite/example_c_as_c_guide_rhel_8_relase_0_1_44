---
scapolite:
    class: group
    version: '0.51'
id: nis
id_namespace: org.ssgproject.RHEL-8
title: NIS
description: <see below>
contents:
  - class: rule_ref
    idref: package_ypbind_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Remove NIS Client
  - class: rule_ref
    idref: service_ypbind_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable ypbind Service
  - class: rule_ref
    idref: package_ypserv_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall ypserv Package
---


## /description

The
Network Information Service (NIS), also known as \'Yellow Pages\' (YP),
and its successor NIS+ have been made obsolete by Kerberos, LDAP, and
other modern centralized authentication services. NIS should not be used
because it suffers from security problems inherent in its design, such
as inadequate protection of important authentication information.
