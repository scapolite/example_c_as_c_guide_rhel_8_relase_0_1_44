---
scapolite:
    class: group
    version: '0.51'
id: certified-vendor
id_namespace: org.ssgproject.RHEL-8
title: Operating System Vendor Support and Certification
description: <see below>
contents:
  - class: rule_ref
    idref: installed_OS_is_FIPS_certified
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: The Installed Operating System Is FIPS 140-2 Certified
  - class: rule_ref
    idref: installed_OS_is_vendor_supported
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: The Installed Operating System Is Vendor Supported
---


## /description

The
assurance of a vendor to provide operating system support and
maintenance for their product is an important criterion to ensure
product stability and security over the life of the product. A certified
product that follows the necessary standards and government
certification requirements guarantees that known software
vulnerabilities will be remediated, and proper guidance for protecting
and securing the operating system will be given.
