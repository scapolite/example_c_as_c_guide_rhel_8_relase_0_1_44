---
scapolite:
    class: group
    version: '0.51'
id: mail
id_namespace: org.ssgproject.RHEL-8
title: Mail Server Software
description: <see below>
contents:
  - class: group_ref
    idref: postfix_client
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure SMTP For Mail Clients
  - class: group_ref
    idref: postfix_harden_os
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Operating System to Protect Mail Server
  - class: rule_ref
    idref: package_sendmail_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall Sendmail Package
  - class: rule_ref
    idref: service_postfix_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable Postfix Service
---


## /description

Mail
servers are used to send and receive email over the network. Mail is a
very common service, and Mail Transfer Agents (MTAs) are obvious targets
of network attack. Ensure that systems are not running MTAs
unnecessarily, and configure needed MTAs as defensively as possible.  
  
Very few systems at any site should be configured to directly receive
email over the network. Users should instead use mail client programs to
retrieve email from a central server that supports protocols such as
IMAP or POP3. However, it is normal for most systems to be independently
capable of sending email, for instance so that cron jobs can report
output to an administrator. Most MTAs, including Postfix, support a
submission-only mode in which mail can be sent from the local system to
a central site MTA (or directly delivered to a local account), but the
system still cannot receive mail directly over a network.  
  
The `alternatives` program in Red Hat Enterprise Linux 8 permits
selection of other mail server software (such as Sendmail), but Postfix
is the default and is preferred. Postfix was coded with security in mind
and can also be more effectively contained by SELinux as its modular
design has resulted in separate processes performing specific actions.
More information is available on its website, <http://www.postfix.org>.
