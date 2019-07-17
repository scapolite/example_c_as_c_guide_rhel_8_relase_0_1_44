---
scapolite:
    class: group
    version: '0.51'
id: restrict_at_cron_users
id_namespace: org.ssgproject.RHEL-8
title: Restrict at and cron to Authorized Users if Necessary
description: <see below>
contents:
  - class: rule_ref
    idref: file_groupowner_cron_allow
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify Group Who Owns /etc/cron.allow file
  - class: rule_ref
    idref: file_owner_cron_allow
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify User Who Owns /etc/cron.allow file
---


## /description

The
`/etc/cron.allow` and `/etc/at.allow` files contain lists of users who
are allowed to use `cron` and at to delay execution of processes. If
these files exist and if the corresponding files `/etc/cron.deny` and
`/etc/at.deny` do not exist, then only users listed in the relevant
allow files can run the crontab and `at` commands to submit jobs to be
run at scheduled intervals. On many systems, only the system
administrator needs the ability to schedule jobs. Note that even if a
given user is not listed in `cron.allow`, cron jobs can still be run as
that user. The `cron.allow` file controls only administrative access to
the crontab command for scheduling and modifying cron jobs.  
  
To restrict `at` and `cron` to only authorized users:

-   Remove the `cron.deny` file:

        $ sudo rm /etc/cron.deny

-   Edit `/etc/cron.allow`, adding one line for each user allowed to use
    the crontab command to create cron jobs.
-   Remove the `at.deny` file:

        $ sudo rm /etc/at.deny

-   Edit `/etc/at.allow`, adding one line for each user allowed to use
    the at command to create at jobs.
