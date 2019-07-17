---
scapolite:
    class: group
    version: '0.51'
id: crypto
id_namespace: org.ssgproject.RHEL-8
title: System Cryptographic Policies
description: <see below>
values:
  - id: var_system_crypto_policy
    id_namespace: org.ssgproject.RHEL-8
    title: The system-provided crypto policies
    description: |
        Specify
        the crypto policy for the system.
    type: string
    default: DEFAULT
    definitions:
      - value: DEFAULT
      - selector: fips
        value: FIPS
      - selector: legacy
        value: LEGACY
      - selector: future
        value: FUTURE
      - selector: next
        value: NEXT
contents:
  - class: rule_ref
    idref: configure_crypto_policy
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure System Cryptography Policy
  - class: rule_ref
    idref: configure_bind_crypto_policy
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure BIND to use System Crypto Policy
  - class: rule_ref
    idref: configure_openssl_crypto_policy
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure OpenSSL library to use System Crypto Policy
  - class: rule_ref
    idref: configure_libreswan_crypto_policy
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Libreswan to use System Crypto Policy
  - class: rule_ref
    idref: configure_ssh_crypto_policy
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure SSH to use System Crypto Policy
  - class: rule_ref
    idref: configure_kerberos_crypto_policy
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Kerberos to use System Crypto Policy
---


## /description

Linux
has the capability to centrally configure cryptographic polices. The
command `update-crypto-policies` is used to set the policy applicable
for the various cryptographic back-ends, such as SSL/TLS libraries. The
configured cryptographic policies will be the default policy used by
these backends unless the application user configures them otherwise.
When the system has been configured to use the centralized cryptographic
policies, the administrator is assured that any application that
utilizes the supported backends will follow a policy that adheres to the
configured profile. Currently the supported backends are:

-   GnuTLS library
-   OpenSSL library
-   NSS library
-   OpenJDK
-   Libkrb5
-   BIND
-   OpenSSH

Applications and languages which rely on any of these backends will
follow the system policies as well. Examples are apache httpd, nginx,
php, and others.
