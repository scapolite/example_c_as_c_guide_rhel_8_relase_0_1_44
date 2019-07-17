---
scapolite:
    class: group
    version: '0.51'
id: dns_server_partition_with_views
id_namespace: org.ssgproject.RHEL-8
title: Use Views to Partition External and Internal Information
description: <see below>
contents: []
---


## /description

If
it is not possible to run external and internal nameservers on separate
physical systems, run BIND9 and simulate this feature using views. Edit
`/etc/named.conf`. Add or correct the following directives (where SUBNET
is the numerical IP representation of your organization in the form
xxx.xxx.xxx.xxx/xx):

``` 
acl internal {
  SUBNET ;
  localhost;
};
view "internal-view" {
  match-clients { internal; };
  zone "." IN {
    type hint;
    file "db.cache";
  };
  zone "internal.example.com " IN {
    ...
  };
};

view "external-view" {
  match-clients { any; };
  recursion no;
  zone "example.com " IN {
    ...
  };
};
```
