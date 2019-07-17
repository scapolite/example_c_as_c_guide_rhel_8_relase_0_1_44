---
scapolite:
    class: group
    version: '0.51'
id: updating
id_namespace: org.ssgproject.RHEL-8
title: Updating Software
description: <see below>
contents:
  - class: rule_ref
    idref: security_patches_up_to_date
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure Software Patches Installed
  - class: rule_ref
    idref: ensure_gpgcheck_local_packages
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure gpgcheck Enabled for Local Packages
  - class: rule_ref
    idref: clean_components_post_updating
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure yum Removes Previous Package Versions
  - class: rule_ref
    idref: ensure_gpgcheck_repo_metadata
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure gpgcheck Enabled for Repository Metadata
  - class: rule_ref
    idref: ensure_gpgcheck_never_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure gpgcheck Enabled for All yum Package Repositories
  - class: rule_ref
    idref: ensure_redhat_gpgkey_installed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure Red Hat GPG Key Installed
  - class: rule_ref
    idref: ensure_gpgcheck_globally_activated
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure gpgcheck Enabled In Main yum Configuration
---


## /description

The
`yum` command line tool is used to install and update software packages.
The system also provides a graphical software update tool in the
**System** menu, in the **Administration** submenu, called **Software
Update**.  
  
Red Hat Enterprise Linux 8 systems contain an installed software catalog
called the RPM database, which records metadata of installed packages.
Consistently using `yum` or the graphical **Software Update** for all
software installation allows for insight into the current inventory of
installed software on the system.
