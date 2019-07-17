---
scapolite:
    class: group
    version: '0.51'
id: postfix_install_ssl_cert
id_namespace: org.ssgproject.RHEL-8
title: Ensure Security of Postfix SSL Certificate
description: <see below>
contents: []
---


## /description

Create
the PKI directory for mail certificates, if it does not already exist:

``` 
$ sudo mkdir /etc/pki/tls/mail
$ sudo chown root:root /etc/pki/tls/mail
$ sudo chmod 755 /etc/pki/tls/mail
```

Using removable media or some other secure transmission format, install
the files generated in the previous step onto the mail server:

``` 
/etc/pki/tls/mail/serverkey.pem: the private key mailserverkey.pem
/etc/pki/tls/mail/servercert.pem: the certificate file mailservercert.pem
```

Verify the ownership and permissions of these files:

``` 
$ sudo chown root:root /etc/pki/tls/mail/serverkey.pem
$ sudo chown root:root /etc/pki/tls/mail/servercert.pem
$ sudo chmod 600 /etc/pki/tls/mail/serverkey.pem
$ sudo chmod 644 /etc/pki/tls/mail/servercert.pem
```

Verify that the CA\'s public certificate file has been installed as
`/etc/pki/tls/CA/cacert.pem`, and has the correct permissions:

``` 
$ sudo chown root:root /etc/pki/tls/CA/cacert.pem
$ sudo chmod 644 /etc/pki/tls/CA/cacert.pem
```
