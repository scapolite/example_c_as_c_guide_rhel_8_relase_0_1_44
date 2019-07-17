---
scapolite:
    class: group
    version: '0.51'
id: root_paths
id_namespace: org.ssgproject.RHEL-8
title: Ensure that No Dangerous Directories Exist in Root\'s Path
description: <see below>
contents:
  - class: rule_ref
    idref: accounts_root_path_dirs_no_write
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure that Root\'s Path Does Not Include World or Group-Wr ...
  - class: rule_ref
    idref: root_path_no_dot
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure that Root\'s Path Does Not Include Relative Paths or ...
---


## /description

The
active path of the root account can be obtained by starting a new root
shell and running:

``` 
# echo $PATH
```

This will produce a colon-separated list of directories in the path.  
  
Certain path elements could be considered dangerous, as they could lead
to root executing unknown or untrusted programs, which could contain
malicious code. Since root may sometimes work inside untrusted
directories, the `.` character, which represents the current directory,
should never be in the root path, nor should any directory which can be
written to by an unprivileged or semi-privileged (system) user.  
  
It is a good practice for administrators to always execute privileged
commands by typing the full path to the command.
