---
scapolite:
    class: group
    version: '0.51'
id: httpd_minimize_config_files_included
id_namespace: org.ssgproject.RHEL-8
title: Minimize Configuration Files Included
description: <see below>
contents: []
---


## /description

The
`Include` directive directs `httpd` to load supplementary configuration
files from a provided path. The default configuration loads all files
that end in `.conf` from the `/etc/httpd/conf.d` directory.  
  
To restrict excess configuration, the following line should be commented
out and replaced with `Include` directives that only reference required
configuration files:

``` 
#Include conf.d/*.conf
```

If the above change was made, ensure that the SSL encryption remains
loaded by explicitly including the corresponding configuration file:

``` 
Include conf.d/ssl.conf
```

If PHP is necessary, a similar alteration must be made:

``` 
Include conf.d/php.conf
```

Explicitly listing the configuration files to be loaded during web
server start-up avoids the possibility of unwanted or malicious
configuration files to be automatically included as part of the
server\'s running configuration.
