---
scapolite:
    class: group
    version: '0.51'
id: httpd_optional_components
id_namespace: org.ssgproject.RHEL-8
title: Minimize Various Optional Components
description: <see below>
contents: []
---


## /description

The
following modules perform very specific tasks, sometimes providing
access to just a few additional directives. If such functionality is not
required (or if you are not using these directives), comment out the
associated module:

-   External filtering (response passed through external program prior
    to client delivery)

        #LoadModule ext_filter_module modules/mod_ext_filter.so

-   User-specified Cache Control and Expiration

        #LoadModule expires_module modules/mod_expires.so

-   Compression Output Filter (provides content compression prior to
    client delivery)

        #LoadModule deflate_module modules/mod_deflate.so

-   HTTP Response/Request Header Customization

        #LoadModule headers_module modules/mod_headers.so

-   User activity monitoring via cookies

        #LoadModule usertrack_module modules/mod_usertrack.so

-   Dynamically configured mass virtual hosting

        #LoadModule vhost_alias_module modules/mod_vhost_alias.so

Minimizing the number of loadable modules available to the web server
reduces risk by limiting the capabilities allowed by the web server.
