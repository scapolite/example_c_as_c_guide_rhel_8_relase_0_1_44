---
scapolite:
    class: group
    version: '0.51'
id: fips
id_namespace: org.ssgproject.RHEL-8
title: Federal Information Processing Standard (FIPS)
description: <see below>
contents:
  - class: rule_ref
    idref: enable_dracut_fips_module
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable Dracut FIPS Module
  - class: rule_ref
    idref: etc_system_fips_exists
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure \'/etc/system-fips\' exists
  - class: rule_ref
    idref: sysctl_crypto_fips_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set kernel parameter \'crypto.fips\_enabled\' to 1
  - class: rule_ref
    idref: enable_fips_mode
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable FIPS Mode
---


## /description

The
Federal Information Processing Standard (FIPS) is a computer security
standard which is developed by the U.S. Government and industry working
groups to validate the quality of cryptographic modules. The FIPS
standard provides four security levels to ensure adequate coverage of
different industries, implementation of cryptographic modules, and
organizational sizes and requirements.  
  
FIPS 140-2 is the current standard for validating that mechanisms used
to access cryptographic modules utilize authentication that meets
industry and government requirements. For government systems, this
allows Security Levels 1, 2, 3, or 4 for use on Red Hat Enterprise Linux
8.  
  
See **<http://csrc.nist.gov/publications/PubsFIPS.html>** for more
information.
