---
scapolite:
    class: group
    version: '0.51'
id: base
id_namespace: org.ssgproject.RHEL-8
title: Base Services
description: <see below>
contents:
  - class: rule_ref
    idref: service_sysstat_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable System Statistics Reset Service (sysstat)
  - class: rule_ref
    idref: service_mdmonitor_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Software RAID Monitor (mdmonitor)
  - class: rule_ref
    idref: service_certmonger_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Certmonger Service (certmonger)
  - class: rule_ref
    idref: service_cgconfig_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Control Group Config (cgconfig)
  - class: rule_ref
    idref: package_psacct_installed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install the psacct package
  - class: rule_ref
    idref: service_netconsole_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Network Console (netconsole)
  - class: rule_ref
    idref: service_irqbalance_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable IRQ Balance (irqbalance)
  - class: rule_ref
    idref: service_kdump_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable KDump Kernel Crash Analyzer (kdump)
  - class: rule_ref
    idref: service_qpidd_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Apache Qpid (qpidd)
  - class: rule_ref
    idref: service_quota_nld_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Quota Netlink (quota\_nld)
  - class: rule_ref
    idref: service_psacct_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable Process Accounting (psacct)
  - class: rule_ref
    idref: service_ntpdate_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable ntpdate Service (ntpdate)
  - class: rule_ref
    idref: service_saslauthd_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Cyrus SASL Authentication Daemon (saslauthd)
  - class: rule_ref
    idref: service_portreserve_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Portreserve (portreserve)
  - class: rule_ref
    idref: service_rhnsd_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Red Hat Network Service (rhnsd)
  - class: rule_ref
    idref: service_cpupower_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable CPU Speed (cpupower)
  - class: rule_ref
    idref: service_messagebus_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable D-Bus IPC Service (messagebus)
  - class: rule_ref
    idref: service_abrtd_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Automatic Bug Reporting Tool (abrtd)
  - class: rule_ref
    idref: service_rhsmcertd_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Red Hat Subscription Manager Daemon (rhsmcertd)
  - class: rule_ref
    idref: service_oddjobd_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Odd Job Daemon (oddjobd)
  - class: rule_ref
    idref: service_acpid_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Advanced Configuration and Power Interface (acpid)
  - class: rule_ref
    idref: service_cgred_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Control Group Rules Engine (cgred)
  - class: rule_ref
    idref: service_smartd_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable SMART Disk Monitoring Service (smartd)
  - class: rule_ref
    idref: package_abrt_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall Automatic Bug Reporting Tool (abrt)
  - class: rule_ref
    idref: service_rdisc_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Network Router Discovery Daemon (rdisc)
---


## /description

This
section addresses the base services that are installed on a Red Hat
Enterprise Linux 8 default installation which are not covered in other
sections. Some of these services listen on the network and should be
treated with particular discretion. Other services are local system
utilities that may or may not be extraneous. In general, system services
should be disabled if not required.
