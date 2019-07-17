---
scapolite:
    class: group
    version: '0.51'
id: ntp
id_namespace: org.ssgproject.RHEL-8
title: Network Time Protocol
description: <see below>
values:
  - id: var_multiple_time_servers
    id_namespace: org.ssgproject.RHEL-8
    title: Vendor Approved Time Servers
    description: |
        The
        list of vendor-approved time servers
    type: string
    default: fedora
    definitions:
      - selector: fedora
        value: 0.fedora.pool.ntp.org,1.fedora.pool.ntp.org,2.fedora.pool.ntp.org,3.fedora.pool.ntp.org
      - selector: rhel
        value: 0.rhel.pool.ntp.org,1.rhel.pool.ntp.org,2.rhel.pool.ntp.org,3.rhel.pool.ntp.org
      - selector: ol
        value: 0.pool.ntp.org,1.pool.ntp.org,2.pool.ntp.org,3.pool.ntp.org
  - id: var_time_service_set_maxpoll
    id_namespace: org.ssgproject.RHEL-8
    title: Maximum NTP or Chrony Poll
    description: |
        The
        maximum NTP or Chrony poll interval number in seconds specified as a
        power of two.
    type: number
    default: system_default
    definitions:
      - selector: 36_hours
        value: 17
      - selector: system_default
        value: 10
contents:
  - class: rule_ref
    idref: package_ntp_installed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install the ntp service
  - class: rule_ref
    idref: service_timesyncd_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable systemd\_timesyncd Service
  - class: rule_ref
    idref: service_chronyd_or_ntpd_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the NTP Daemon
  - class: rule_ref
    idref: chronyd_or_ntpd_set_maxpoll
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Time Service Maxpoll Interval
  - class: rule_ref
    idref: ntpd_specify_remote_server
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Specify a Remote NTP Server
  - class: rule_ref
    idref: ntpd_specify_multiple_servers
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Specify Additional Remote NTP Servers
  - class: rule_ref
    idref: service_ntpd_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the NTP Daemon
  - class: rule_ref
    idref: chronyd_or_ntpd_specify_multiple_servers
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Specify Additional Remote NTP Servers
  - class: rule_ref
    idref: service_ntp_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the NTP Daemon
  - class: rule_ref
    idref: chronyd_or_ntpd_specify_remote_server
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Specify a Remote NTP Server
---


## /description

The
Network Time Protocol is used to manage the system clock over a network.
Computer clocks are not very accurate, so time will drift unpredictably
on unmanaged systems. Central time protocols can be used both to ensure
that time is consistent among a network of systems, and that their time
is consistent with the outside world.  
  
If every system on a network reliably reports the same time, then it is
much easier to correlate log messages in case of an attack. In addition,
a number of cryptographic protocols (such as Kerberos) use timestamps to
prevent certain types of attacks. If your network does not have
synchronized time, these protocols may be unreliable or even unusable.  
  
Depending on the specifics of the network, global time accuracy may be
just as important as local synchronization, or not very important at
all. If your network is connected to the Internet, using a public
timeserver (or one provided by your enterprise) provides globally
accurate timestamps which may be essential in investigating or
responding to an attack which originated outside of your network.  
  
A typical network setup involves a small number of internal systems
operating as NTP servers, and the remainder obtaining time information
from those internal servers.  
  
There is a choice between the daemons `ntpd` and `chronyd`, which are
available from the repositories in the `ntp` and `chrony` packages
respectively.  
  
The default `chronyd` daemon can work well when external time references
are only intermittently accesible, can perform well even when the
network is congested for longer periods of time, can usually synchronize
the clock faster and with better time accuracy, and quickly adapts to
sudden changes in the rate of the clock, for example, due to changes in
the temperature of the crystal oscillator. `Chronyd` should be
considered for all systems which are frequently suspended or otherwise
intermittently disconnected and reconnected to a network. Mobile and
virtual systems for example.  
  
The `ntpd` NTP daemon fully supports NTP protocol version 4 (RFC 5905),
including broadcast, multicast, manycast clients and servers, and the
orphan mode. It also supports extra authentication schemes based on
public-key cryptography (RFC 5906). The NTP daemon (`ntpd`) should be
considered for systems which are normally kept permanently on. Systems
which are required to use broadcast or multicast IP, or to perform
authentication of packets with the `Autokey` protocol, should consider
using `ntpd`.  
  
Refer to
<https://docs.fedoraproject.org/en-US/fedora/rawhide/system-administrators-guide/servers/Configuring_NTP_Using_the_chrony_Suite/>
for more detailed comparison of features of `chronyd` and `ntpd` daemon
features respectively, and for further guidance how to choose between
the two NTP daemons.  
  
The upstream manual pages at <http://chrony.tuxfamily.org/manual.html>
for `chronyd` and <http://www.ntp.org> for `ntpd` provide additional
information on the capabilities and configuration of each of the NTP
daemons.
