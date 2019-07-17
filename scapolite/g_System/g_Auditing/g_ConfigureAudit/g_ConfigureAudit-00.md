---
scapolite:
    class: group
    version: '0.51'
id: configure_auditd_data_retention
id_namespace: org.ssgproject.RHEL-8
title: Configure auditd Data Retention
description: <see below>
values:
  - id: var_auditd_space_left_action
    id_namespace: org.ssgproject.RHEL-8
    title: Action for auditd to take when disk space just starts to run low
    description: |
        The
        setting for space\_left\_action in /etc/audit/auditd.conf
    type: string
    default: email
    definitions:
      - selector: email
        value: email
      - selector: exec
        value: exec
      - selector: halt
        value: halt
      - selector: single
        value: single
      - selector: suspend
        value: suspend
      - selector: syslog
        value: syslog
      - selector: rotate
        value: rotate
  - id: var_auditd_disk_error_action
    id_namespace: org.ssgproject.RHEL-8
    title: Action for auditd to take when disk errors
    description: |
        The
        setting for disk\_error\_action in /etc/audit/auditd.conf
    type: string
    default: single
    definitions:
      - selector: email
        value: email
      - selector: exec
        value: exec
      - selector: halt
        value: halt
      - selector: single
        value: single
      - selector: syslog
        value: syslog
  - id: var_auditd_space_left
    id_namespace: org.ssgproject.RHEL-8
    title: Size remaining in disk space before prompting space\_left\_action
    description: |
        The
        setting for space\_left (MB) in /etc/audit/auditd.conf
    type: number
    default: 100MB
    definitions:
      - selector: 1000MB
        value: 1000
      - selector: 100MB
        value: 100
      - selector: 250MB
        value: 250
      - selector: 500MB
        value: 500
      - selector: 750MB
        value: 750
  - id: var_auditd_num_logs
    id_namespace: org.ssgproject.RHEL-8
    title: Number of log files for auditd to retain
    description: |
        The
        setting for num\_logs in /etc/audit/auditd.conf
    type: number
    default: '5'
    definitions:
      - selector: '0'
        value: 0
      - selector: '1'
        value: 1
      - selector: '2'
        value: 2
      - selector: '3'
        value: 3
      - selector: '4'
        value: 4
      - selector: '5'
        value: 5
  - id: var_auditd_max_log_file_action
    id_namespace: org.ssgproject.RHEL-8
    title: Action for auditd to take when log files reach their maximum size
    description: |
        The
        setting for max\_log\_file\_action in /etc/audit/auditd.conf
    type: string
    default: rotate
    definitions:
      - selector: keep_logs
        value: keep_logs
      - selector: rotate
        value: rotate
      - selector: suspend
        value: suspend
      - selector: syslog
        value: syslog
  - id: var_audispd_disk_full_action
    id_namespace: org.ssgproject.RHEL-8
    title: Action for audispd to take when disk is full
    description: |
        The
        setting for disk\_full\_action in /etc/audisp/audisp-remote.conf
    type: string
    default: single
    definitions:
      - selector: email
        value: email
      - selector: exec
        value: exec
      - selector: halt
        value: halt
      - selector: single
        value: single
      - selector: suspend
        value: suspend
      - selector: syslog
        value: syslog
  - id: var_auditd_flush
    id_namespace: org.ssgproject.RHEL-8
    title: Auditd priority for flushing data to disk
    description: |
        The
        setting for flush in /etc/audit/auditd.conf
    type: string
    default: data
    definitions:
      - selector: data
        value: data
      - selector: incremental
        value: incremental
      - selector: incremental_async
        value: incremental_async
      - selector: none
        value: none
      - selector: sync
        value: sync
  - id: var_auditd_max_log_file
    id_namespace: org.ssgproject.RHEL-8
    title: Maximum audit log file size for auditd
    description: |
        The
        setting for max\_log\_size in /etc/audit/auditd.conf
    type: number
    default: '6'
    definitions:
      - selector: '1'
        value: 1
      - selector: '10'
        value: 10
      - selector: '20'
        value: 20
      - selector: '5'
        value: 5
      - selector: '6'
        value: 6
  - id: var_auditd_disk_full_action
    id_namespace: org.ssgproject.RHEL-8
    title: Action for auditd to take when disk is full
    description: |
        The
        setting for disk\_full\_action in /etc/audit/auditd.conf
    type: string
    default: single
    definitions:
      - selector: email
        value: email
      - selector: exec
        value: exec
      - selector: halt
        value: halt
      - selector: single
        value: single
      - selector: syslog
        value: syslog
  - id: var_audispd_remote_server
    id_namespace: org.ssgproject.RHEL-8
    title: Remote server for audispd to send audit records
    description: The setting for remote\_server in /etc/audit/audisp-remote.conf
    type: string
    interactive: true
    definitions:
      - value: myhost.mydomain.com
  - id: var_auditd_admin_space_left_action
    id_namespace: org.ssgproject.RHEL-8
    title: Action for auditd to take when disk space is low
    description: |
        The
        setting for admin\_space\_left\_action in /etc/audit/auditd.conf
    type: string
    default: single
    definitions:
      - selector: email
        value: email
      - selector: exec
        value: exec
      - selector: halt
        value: halt
      - selector: single
        value: single
      - selector: suspend
        value: suspend
      - selector: syslog
        value: syslog
      - selector: rotate
        value: rotate
  - id: var_audispd_network_failure_action
    id_namespace: org.ssgproject.RHEL-8
    title: Action for audispd to take when network fails
    description: |
        The
        setting for network\_failure\_action in /etc/audisp/audisp-remote.conf
    type: string
    default: single
    definitions:
      - selector: email
        value: email
      - selector: exec
        value: exec
      - selector: halt
        value: halt
      - selector: single
        value: single
      - selector: suspend
        value: suspend
      - selector: syslog
        value: syslog
  - id: var_auditd_action_mail_acct
    id_namespace: org.ssgproject.RHEL-8
    title: Account for auditd to send email when actions occurs
    description: |
        The
        setting for action\_mail\_acct in /etc/audit/auditd.conf
    type: string
    default: root
    definitions:
      - selector: admin
        value: admin
      - selector: root
        value: root
contents:
  - class: rule_ref
    idref: auditd_data_retention_space_left
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure auditd space\_left on Low Disk Space
  - class: rule_ref
    idref: auditd_audispd_syslog_plugin_activated
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure auditd to use audispd\'s syslog plugin
  - class: rule_ref
    idref: auditd_data_disk_full_action
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure auditd Disk Full Action when Disk Space Is Full
  - class: rule_ref
    idref: auditd_data_retention_max_log_file
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure auditd Max Log File Size
  - class: rule_ref
    idref: auditd_data_retention_action_mail_acct
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure auditd mail\_acct Action on Low Disk Space
  - class: rule_ref
    idref: auditd_data_retention_num_logs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure auditd Number of Logs Retained
  - class: rule_ref
    idref: auditd_audispd_disk_full_action
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure audispd\'s Plugin disk\_full\_action When Disk Is ...
  - class: rule_ref
    idref: auditd_audispd_configure_remote_server
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure audispd Plugin To Send Logs To Remote Server
  - class: rule_ref
    idref: auditd_audispd_encrypt_sent_records
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Encrypt Audit Records Sent With audispd Plugin
  - class: rule_ref
    idref: auditd_audispd_network_failure_action
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure audispd\'s Plugin network\_failure\_action On Net ...
  - class: rule_ref
    idref: auditd_data_disk_error_action
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure auditd Disk Error Action on Disk Error
  - class: rule_ref
    idref: auditd_data_retention_max_log_file_action
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure auditd max\_log\_file\_action Upon Reaching Maxim ...
  - class: rule_ref
    idref: auditd_data_retention_space_left_action
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure auditd space\_left Action on Low Disk Space
  - class: rule_ref
    idref: auditd_data_retention_admin_space_left_action
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure auditd admin\_space\_left Action on Low Disk Spac ...
  - class: rule_ref
    idref: auditd_data_retention_flush
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure auditd flush priority
---


## /description

The
audit system writes data to `/var/log/audit/audit.log`. By default,
`auditd` rotates 5 logs by size (6MB), retaining a maximum of 30MB of
data in total, and refuses to write entries when the disk is too full.
This minimizes the risk of audit data filling its partition and
impacting other services. This also minimizes the risk of the audit
daemon temporarily disabling the system if it cannot write audit log
(which it can be configured to do). For a busy system or a system which
is thoroughly auditing system activity, the default settings for data
retention may be insufficient. The log file size needed will depend
heavily on what types of events are being audited. First configure
auditing to log all the events of interest. Then monitor the log size
manually for awhile to determine what file size will allow you to keep
the required data for the correct time period.  
  
Using a dedicated partition for `/var/log/audit` prevents the `auditd`
logs from disrupting system functionality if they fill, and, more
importantly, prevents other activity in `/var` from filling the
partition and stopping the audit trail. (The audit logs are size-limited
and therefore unlikely to grow without bound unless configured to do
so.) Some machines may have requirements that no actions occur which
cannot be audited. If this is the case, then `auditd` can be configured
to halt the machine if it runs out of space. **Note:** Since older logs
are rotated, configuring `auditd` this way does not prevent older logs
from being rotated away before they can be viewed. *If your system is
configured to halt when logging cannot be performed, make sure this can
never happen under normal circumstances! Ensure that `/var/log/audit` is
on its own partition, and that this partition is larger than the maximum
amount of data `auditd` will retain normally.*
