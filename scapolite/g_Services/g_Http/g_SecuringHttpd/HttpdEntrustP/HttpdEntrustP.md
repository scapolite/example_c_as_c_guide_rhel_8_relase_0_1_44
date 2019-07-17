---
scapolite:
    class: rule
    version: '0.51'
id: httpd_entrust_passwords
id_namespace: org.ssgproject.RHEL-8
title: The web server password(s) must be entrusted to the SA or Web Manager
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
        idref: ocil:ssg-httpd_entrust_passwords_ocil:questionnaire:1
        href: httpd_entrust_passwords.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG050
    relation: ''
---


## /rule

The web server password(s) must be entrusted to the SA or Web Manager

## /rationale

If
the password is not entrusted to an SA or web manager the ability to
ensure the availability of the web server is compromised.

## /description

Normally,
a service account is established for the web server. This is because a
privileged account is not desirable and the server is designed to run
for long uninterrupted periods of time. The SA or Web Manager will need
password access to the web server to restart the service in the event or
an emergency as the web server is not to restart automatically after an
unscheduled interruption.
