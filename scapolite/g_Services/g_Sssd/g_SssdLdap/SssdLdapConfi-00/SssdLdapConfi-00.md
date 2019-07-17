---
scapolite:
    class: rule
    version: '0.51'
id: sssd_ldap_configure_tls_ca
id_namespace: org.ssgproject.RHEL-8
title: Configure SSSD LDAP Backend Client CA Certificate
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
        idref: ocil:ssg-sssd_ldap_configure_tls_ca_ocil:questionnaire:1
        href: sssd_ldap_configure_tls_ca.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-001453
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000250-GPOS-00093
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-040200
    relation: ''
---


## /rule

Configure SSSD LDAP Backend Client CA Certificate

## /rationale

Without
cryptographic integrity protections, information can be altered by
unauthorized users without detection.  
  
Cryptographic mechanisms used for protecting the integrity of
information include, for example, signed hash functions using asymmetric
cryptography enabling distribution of the public key to verify the hash
information while maintaining the confidentiality of the key used to
generate the hash.

## /description

Configure
SSSD to implement cryptography to protect the integrity of LDAP remote
access sessions. By setting the

``` 
ldap_tls_cacert
```

option in

``` 
/etc/sssd/sssd.conf
```

to point to the path for the X.509 certificates used for peer
authentication.

``` 
ldap_tls_cacert /path/to/tls/ca.cert
```
