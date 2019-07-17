---
scapolite:
    class: rule
    version: '0.51'
id: postfix_prevent_unrestricted_relay
id_namespace: org.ssgproject.RHEL-8
title: Prevent Unrestricted Mail Relaying
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
        href: postfix_prevent_unrestricted_relay.sh
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-postfix_prevent_unrestricted_relay_ocil:questionnaire:1
        href: postfix_prevent_unrestricted_relay.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000480-GPOS-00227
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-040680
    relation: ''
---


## /rule

Prevent Unrestricted Mail Relaying

## /rationale

If
unrestricted mail relaying is permitted, unauthorized senders could use
this host as a mail relay for the purpose of sending spam or other
unauthorized activity.

## /description

Modify
the

``` 
/etc/postfix/main.cf
```

file to restrict client connections to the local network with the
following command:

``` 
$ sudo postconf -e 'smtpd_client_restrictions = permit_mynetworks,reject'
```
