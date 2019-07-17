---
scapolite:
    class: rule
    version: '0.51'
id: httpd_remove_robots_file
id_namespace: org.ssgproject.RHEL-8
title: The robots.txt Files Must Not Exist
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-httpd_remove_robots_file_ocil:questionnaire:1
        href: httpd_remove_robots_file.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG310
    relation: ''
---


## /rule

The robots.txt Files Must Not Exist

## /rationale

Search
engines are constantly at work on the Internet. Search engines are
augmented by agents, often referred to as spiders or bots, which
endeavor to capture and catalog web-site content. In turn, these search
engines make the content they obtain and catalog available to any public
web user.  
  
To request that a well behaved search engine not crawl and catalog a
site, the web site may contain a file called robots.txt. This file
contains directories and files that the web server SA desires not be
crawled or cataloged, but this file can also be used, by an attacker or
poorly coded search engine, as a directory and file index to a site.
This information may be used to reduce an attacker\'s time searching and
traversing the web site to find files that might be relevant. If
information on the web site needs to be protected from search engines
and public view, other methods must be used.

## /description

Remove
any `robots.txt` files that may exist with any web content. Other
methods must be employed if there is information on the web site that
needs protection from search engines and public view. Inspect all
instances of `DocumentRoot` and `Alias` and remove any `robots.txt`
file.

``` 
$ sudo rm -f path/to/robots.txt
```
