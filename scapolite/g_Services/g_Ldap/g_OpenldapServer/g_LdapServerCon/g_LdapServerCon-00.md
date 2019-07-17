---
scapolite:
    class: group
    version: '0.51'
id: ldap_server_config_certificate_files
id_namespace: org.ssgproject.RHEL-8
title: Install and Protect LDAP Certificate Files
description: <see below>
contents: []
---


## /description

Create
the PKI directory for LDAP certificates if it does not already exist:

``` 
$ sudo mkdir /etc/pki/tls/ldap
$ sudo chown root:root /etc/pki/tls/ldap
$ sudo chmod 755 /etc/pki/tls/ldap
```

Using removable media or some other secure transmission format, install
the certificate files onto the LDAP server:

-   `/etc/pki/tls/ldap/serverkey.pem`: the private key
    `ldapserverkey.pem`
-   `/etc/pki/tls/ldap/servercert.pem`: the certificate file
    `ldapservercert.pem`

Verify the ownership and permissions of these files:

``` 
$ sudo chown root:ldap /etc/pki/tls/ldap/serverkey.pem
$ sudo chown root:ldap /etc/pki/tls/ldap/servercert.pem
$ sudo chmod 640 /etc/pki/tls/ldap/serverkey.pem
$ sudo chmod 640 /etc/pki/tls/ldap/servercert.pem
```

Verify that the CA\'s public certificate file has been installed as
`/etc/pki/tls/CA/cacert.pem`, and has the correct permissions:

``` 
$ sudo mkdir /etc/pki/tls/CA
$ sudo chown root:root /etc/pki/tls/CA/cacert.pem
$ sudo chmod 644 /etc/pki/tls/CA/cacert.pem
```

As a result of these steps, the LDAP server will have access to its own
private certificate and the key with which that certificate is
encrypted, and to the public certificate file belonging to the CA. Note
that it would be possible for the key to be protected further, so that
processes running as ldap could not read it. If this were done, the LDAP
server process would need to be restarted manually whenever the server
rebooted.
