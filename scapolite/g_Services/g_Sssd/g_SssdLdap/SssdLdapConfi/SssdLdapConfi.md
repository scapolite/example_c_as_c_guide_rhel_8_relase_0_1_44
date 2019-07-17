---
scapolite:
    class: rule
    version: '0.51'
id: sssd_ldap_configure_tls_ca_dir
id_namespace: org.ssgproject.RHEL-8
title: Configure SSSD LDAP Backend Client CA Certificate Location
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
        href: sssd_ldap_configure_tls_ca_dir.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: sssd_ldap_configure_tls_ca_dir.ansible
        complexity: low
        disruption: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-sssd_ldap_configure_tls_ca_dir:def:1
        href: sssd_ldap_configure_tls_ca_dir.oval.xml
        exports:
          - value_id_namespace: org.ssgproject.RHEL-8
            value_idref: var_sssd_ldap_tls_ca_dir
            variable_idref: oval:ssg-var_sssd_ldap_tls_ca_dir:var:1
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-sssd_ldap_configure_tls_ca_dir_ocil:questionnaire:1
        href: sssd_ldap_configure_tls_ca_dir.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-001453
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000250-GPOS-00093
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-040190
    relation: ''
---


## /rule

Configure SSSD LDAP Backend Client CA Certificate Location

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
ldap_tls_cacertdir
```

option in

``` 
/etc/sssd/sssd.conf
```

to point to the path for the X.509 certificates used for peer
authentication.

``` 
ldap_tls_cacertdir /path/to/tls/cacert
```
