---
scapolite:
    class: rule
    version: '0.51'
id: disable_logwatch_for_logserver
id_namespace: org.ssgproject.RHEL-8
title: Disable Logwatch on Clients if a Logserver Exists
rule: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
---


## /rule

Disable Logwatch on Clients if a Logserver Exists

## /description

Does
your site have a central logserver which has been configured to report
on logs received from all systems? If so:

``` 
$ sudo rm /etc/cron.daily/0logwatch
```

If no logserver exists, it will be necessary for each system to run
Logwatch individually. Using a central logserver provides the security
and reliability benefits discussed earlier, and also makes monitoring
logs easier and less time-intensive for administrators.
