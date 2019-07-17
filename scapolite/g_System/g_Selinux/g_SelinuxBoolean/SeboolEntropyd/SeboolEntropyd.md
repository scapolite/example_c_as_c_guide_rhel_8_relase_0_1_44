---
scapolite:
    class: rule
    version: '0.51'
id: sebool_entropyd_use_audio
id_namespace: org.ssgproject.RHEL-8
title: Disable the entropyd\_use\_audio SELinux Boolean
rule: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-sebool_entropyd_use_audio_ocil:questionnaire:1
        href: sebool_entropyd_use_audio.ocil.xml
---


## /rule

Disable the entropyd\_use\_audio SELinux Boolean

## /description

By
default, the SELinux boolean `entropyd_use_audio` is enabled. This
setting should be disabled as it uses audit input to generate entropy.
To disable the `entropyd_use_audio` SELinux boolean, run the following
command:

``` 
$ sudo setsebool -P entropyd_use_audio off
```
