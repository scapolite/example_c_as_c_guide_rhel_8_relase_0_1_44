---
scapolite:
    class: group
    version: '0.51'
id: dns_server_separate_internal_external
id_namespace: org.ssgproject.RHEL-8
title: Run Separate DNS Servers for External and Internal Queries
description: <see below>
contents: []
---


## /description

Is
it possible to run external and internal nameservers on separate
systems? If so, follow the configuration guidance in this section. On
the external nameserver, edit `/etc/named.conf` to add or correct the
following directives:

``` 
options {
  allow-query { any; };
  recursion no;
  ...
};
zone "example.com " IN {
  ...
};
```

On the internal nameserver, edit `/etc/named.conf`. Add or correct the
following directives, where SUBNET is the numerical IP representation of
your organization in the form xxx.xxx.xxx.xxx/xx:

``` 
acl internal {
  SUBNET ;
  localhost;
};
options {
  allow-query { internal; };
  ...
};
zone "internal.example.com " IN {
  ...
};
```
