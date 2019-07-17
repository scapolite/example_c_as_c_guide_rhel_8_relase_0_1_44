---
scapolite:
    class: group
    version: '0.51'
id: postfix_server_mail_smtpd_recipient_restrictions
id_namespace: org.ssgproject.RHEL-8
title: Enact SMTP Recipient Restrictions
description: <see below>
contents: []
---


## /description

To
configure Postfix to restrict addresses to which it will send mail, see:
<http://www.postfix.org/SMTPD_ACCESS_README.html#danger>  
The full contents of `smtpd_recipient_restrictions` will vary by site,
since this is a common place to put spam restrictions and other
site-specific options. The `permit_mynetworks` option allows all mail to
be relayed from the systems in `mynetworks`. Then, the
`reject_unauth_destination` option denies all mail whose destination
address is not local, preventing any other systems from relaying. These
two options should always appear in this order, and should usually
follow one another immediately unless SMTP AUTH is used.
