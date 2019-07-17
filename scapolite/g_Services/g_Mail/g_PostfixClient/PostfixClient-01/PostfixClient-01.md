---
scapolite:
    class: rule
    version: '0.51'
id: postfix_client_configure_mail_alias
id_namespace: org.ssgproject.RHEL-8
title: Configure System to Forward All Mail For The Root Account
rule: <see below>
rationale: <see below>
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
        idref: ocil:ssg-postfix_client_configure_mail_alias_ocil:questionnaire:1
        href: postfix_client_configure_mail_alias.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: CM-6(b)
    relation: ''
---


## /rule

Configure System to Forward All Mail For The Root Account

## /rationale

A
number of system services utilize email messages sent to the root user
to notify system administrators of active or impending issues. These
messages must be forwarded to at least one monitored email address.

## /description

Set
up an alias for root that forwards to a monitored email address:

``` {html="http://www.w3.org/1999/xhtml" ns0="http://checklists.nist.gov/xccdf/1.1"}
$ sudo echo "root: " >> /etc/aliases
$ sudo newaliases
```
