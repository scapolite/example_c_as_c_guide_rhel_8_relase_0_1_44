---
scapolite:
    class: group
    version: '0.51'
id: auditing
id_namespace: org.ssgproject.RHEL-8
title: System Accounting with auditd
description: <see below>
contents:
  - class: group_ref
    idref: auditd_configure_rules
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure auditd Rules for Comprehensive Auditing
  - class: group_ref
    idref: configure_auditd_data_retention
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure auditd Data Retention
  - class: rule_ref
    idref: grub2_audit_argument
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable Auditing for Processes Which Start Prior to the Audi ...
  - class: rule_ref
    idref: grub2_audit_backlog_limit_argument
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Extend Audit Backlog Limit for the Audit Daemon
  - class: rule_ref
    idref: service_auditd_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable auditd Service
  - class: rule_ref
    idref: package_auditd_installed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: install the auditd service
---


## /description

The
audit service provides substantial capabilities for recording system
activities. By default, the service audits about SELinux AVC denials and
certain types of security-relevant events such as system logins, account
modifications, and authentication events performed by programs such as
sudo. Under its default configuration, `auditd` has modest disk space
requirements, and should not noticeably impact system performance.  
  
NOTE: The Linux Audit daemon `auditd` can be configured to use the
`augenrules` program to read audit rules files (`*.rules`) located in
`/etc/audit/rules.d` location and compile them to create the resulting
form of the `/etc/audit/audit.rules` configuration file during the
daemon startup (default configuration). Alternatively, the `auditd`
daemon can use the `auditctl` utility to read audit rules from the
`/etc/audit/audit.rules` configuration file during daemon startup, and
load them into the kernel. The expected behavior is configured via the
appropriate `ExecStartPost` directive setting in the
`/usr/lib/systemd/system/auditd.service` configuration file. To instruct
the `auditd` daemon to use the `augenrules` program to read audit rules
(default configuration), use the following setting:  

``` 
ExecStartPost=-/sbin/augenrules --load
```

in the `/usr/lib/systemd/system/auditd.service` configuration file. In
order to instruct the `auditd` daemon to use the `auditctl` utility to
read audit rules, use the following setting:  

``` 
ExecStartPost=-/sbin/auditctl -R /etc/audit/audit.rules
```

in the `/usr/lib/systemd/system/auditd.service` configuration file.
Refer to `[Service]` section of the
`/usr/lib/systemd/system/auditd.service` configuration file for further
details.  
  
Government networks often have substantial auditing requirements and
`auditd` can be configured to meet these requirements. Examining some
example audit records demonstrates how the Linux audit system satisfies
common requirements. The following example from Fedora Documentation
available at
`https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/SELinux_Users_and_Administrators_Guide/sect-Security-Enhanced_Linux-Troubleshooting-Fixing_Problems.html#sect-Security-Enhanced_Linux-Fixing_Problems-Raw_Audit_Messages`
shows the substantial amount of information captured in a two typical
\"raw\" audit messages, followed by a breakdown of the most important
fields. In this example the message is SELinux-related and reports an
AVC denial (and the associated system call) that occurred when the
Apache HTTP Server attempted to access the `/var/www/html/file1` file
(labeled with the `samba_share_t` type):

``` 
type=AVC msg=audit(1226874073.147:96): avc:  denied  { getattr } for pid=2465 comm="httpd"
path="/var/www/html/file1" dev=dm-0 ino=284133 scontext=unconfined_u:system_r:httpd_t:s0
tcontext=unconfined_u:object_r:samba_share_t:s0 tclass=file

type=SYSCALL msg=audit(1226874073.147:96): arch=40000003 syscall=196 success=no exit=-13
a0=b98df198 a1=bfec85dc a2=54dff4 a3=2008171 items=0 ppid=2463 pid=2465 auid=502 uid=48
gid=48 euid=48 suid=48 fsuid=48 egid=48 sgid=48 fsgid=48 tty=(none) ses=6 comm="httpd"
exe="/usr/sbin/httpd" subj=unconfined_u:system_r:httpd_t:s0 key=(null)
```

-   `msg=audit(1226874073.147:96)`
    -   The number in parentheses is the unformatted time stamp (Epoch
        time) for the event, which can be converted to standard time by
        using the `date` command.
-   `{ getattr }`
    -   The item in braces indicates the permission that was denied.
        `getattr` indicates the source process was trying to read the
        target file\'s status information. This occurs before reading
        files. This action is denied due to the file being accessed
        having the wrong label. Commonly seen permissions include
        `getattr`, `read`, and `write`.
-   `comm="httpd"`
    -   The executable that launched the process. The full path of the
        executable is found in the `exe=` section of the system call
        (`SYSCALL`) message, which in this case, is
        `exe="/usr/sbin/httpd"`.
-   `path="/var/www/html/file1"`
    -   The path to the object (target) the process attempted to access.
-   `scontext="unconfined_u:system_r:httpd_t:s0"`
    -   The SELinux context of the process that attempted the denied
        action. In this case, it is the SELinux context of the Apache
        HTTP Server, which is running in the `httpd_t` domain.
-   `tcontext="unconfined_u:object_r:samba_share_t:s0"`
    -   The SELinux context of the object (target) the process attempted
        to access. In this case, it is the SELinux context of `file1`.
        Note: the `samba_share_t` type is not accessible to processes
        running in the `httpd_t` domain.
-   From the system call (`SYSCALL`) message, two items are of interest:
    -   `success=no`: indicates whether the denial (AVC) was enforced or
        not. `success=no` indicates the system call was not successful
        (SELinux denied access). `success=yes` indicates the system call
        was successful - this can be seen for permissive domains or
        unconfined domains, such as `initrc_t` and `kernel_t`.
    -   `exe="/usr/sbin/httpd"`: the full path to the executable that
        launched the process, which in this case, is
        `exe="/usr/sbin/httpd"`.
