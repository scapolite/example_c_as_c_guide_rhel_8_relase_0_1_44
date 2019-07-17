---
scapolite:
    class: group
    version: '0.51'
id: cron_and_at
id_namespace: org.ssgproject.RHEL-8
title: Cron and At Daemons
description: <see below>
contents:
  - class: group_ref
    idref: restrict_at_cron_users
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict at and cron to Authorized Users if Necessary
  - class: rule_ref
    idref: service_atd_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable At Service (atd)
  - class: rule_ref
    idref: service_cron_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable cron Service
  - class: rule_ref
    idref: service_crond_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable cron Service
  - class: rule_ref
    idref: disable_anacron
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable anacron Service
  - class: rule_ref
    idref: package_cron_installed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install the cron service
---


## /description

The
cron and at services are used to allow commands to be executed at a
later time. The cron service is required by almost all systems to
perform necessary maintenance tasks, while at may or may not be required
on a given system. Both daemons should be configured defensively.
