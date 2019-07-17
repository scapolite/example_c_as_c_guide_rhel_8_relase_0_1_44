---
scapolite:
    class: rule
    version: '0.51'
id: httpd_configure_valid_server_cert
id_namespace: org.ssgproject.RHEL-8
title: Configure A Valid Server Certificate
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
        idref: ocil:ssg-httpd_configure_valid_server_cert_ocil:questionnaire:1
        href: httpd_configure_valid_server_cert.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG350
    relation: ''
---


## /rule

Configure A Valid Server Certificate

## /rationale

This
check verifies that DoD is a hosted web site\'s CA. The certificate is
actually a DoD-issued server certificate used by the organization being
reviewed. This is used to verify the authenticity of the web site to the
user. If the certificate is not for the server (Certificate belongs to),
if the certificate is not issued by DoD (Certificate was issued by), or
if the current date is not included in the valid date (Certificate is
valid from), then there is no assurance that the use of the certificate
is valid. The entire purpose of using a certificate is, therefore,
compromised.

## /description

Configure
the web site to use a valid organizationally defined certificate. For
DoD, this is a DoD server certificate issued by the DoD CA.
