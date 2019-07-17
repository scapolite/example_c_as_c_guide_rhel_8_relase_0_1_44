---
scapolite:
    class: group
    version: '0.51'
id: dovecot_support_necessary_protocols
id_namespace: org.ssgproject.RHEL-8
title: Support Only the Necessary Protocols
description: <see below>
contents: []
---


## /description

Dovecot
supports the IMAP and POP3 protocols, as well as SSL-protected versions
of those protocols. Configure the Dovecot server to support only the
protocols needed by your site. Edit `/etc/dovecot/dovecot.conf`. Add or
correct the following lines, replacing `PROTOCOL` with only the subset
of protocols (`imap`, `imaps`, `pop3`, `pop3s`) required:

``` 
protocols = PROTOCOL
```

If possible, require SSL protection for all transactions. The SSL
protocol variants listen on alternate ports (995 instead of 110 for
pop3s, and 993 instead of 143 for imaps), and require SSL-aware clients.
An alternate approach is to listen on the standard port and require the
client to use the STARTTLS command before authenticating.
