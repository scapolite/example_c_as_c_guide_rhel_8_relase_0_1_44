---
scapolite:
    class: rule
    version: '0.51'
id: accounts_user_home_paths_only
id_namespace: org.ssgproject.RHEL-8
title: Ensure that Users Path Contains Only Local Directories
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
        idref: ocil:ssg-accounts_user_home_paths_only_ocil:questionnaire:1
        href: accounts_user_home_paths_only.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000480-GPOS-00227
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-020720
    relation: ''
---


## /rule

Ensure that Users Path Contains Only Local Directories

## /rationale

The
executable search path (typically the PATH environment variable)
contains a list of directories for the shell to search to find
executables. If this path includes the current working directory (other
than the users home directory), executables in these directories may be
executed instead of system commands. This variable is formatted as a
colon-separated list of directories. If there is an empty entry, such as
a leading or trailing colon or two consecutive colons, this is
interpreted as the current working directory. If deviations from the
default system search path for the local interactive user are required,
they must be documented with the Information System Security Officer
(ISSO).

## /description

Ensure
that all interactive user initialization files executable search path
statements do not contain statements that will reference a working
directory other than the users home directory.
