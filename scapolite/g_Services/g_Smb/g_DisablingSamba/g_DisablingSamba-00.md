---
scapolite:
    class: group
    version: '0.51'
id: disabling_samba
id_namespace: org.ssgproject.RHEL-8
title: Disable Samba if Possible
description: <see below>
contents:
  - class: rule_ref
    idref: package_samba_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall Samba Package
  - class: rule_ref
    idref: service_smb_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Samba
---


## /description

Even
after the Samba server package has been installed, it will remain
disabled. Do not enable this service unless it is absolutely necessary
to provide Microsoft Windows file and print sharing functionality.
