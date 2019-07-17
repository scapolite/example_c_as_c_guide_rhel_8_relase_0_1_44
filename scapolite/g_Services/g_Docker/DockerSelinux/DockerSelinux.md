---
scapolite:
    class: rule
    version: '0.51'
id: docker_selinux_enabled
id_namespace: org.ssgproject.RHEL-8
title: Ensure SELinux support is enabled in Docker
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: high
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
---


## /rule

Ensure SELinux support is enabled in Docker

## /rationale

If
SELinux is not explicitely enabled in the Docker daemon configuration,
Docker does not use SELinux which means Docker runs unconfined, and
SELinux will not provide security separation for Docker container
processes. However enabling SELinux for the Docker service prevents an
attacker or rogue container from attacking other container processes and
content as well as prevents taking over the host operating system.

## /description

To
enable the SELinux for the Docker service, the Docker service must be
configured to run the Docker daemon with `--selinux-enabled` option. In
`/etc/sysconfig/docker` configuration file, add or correct the following
line to enable SELinux support in the Docker daemon:

``` 
OPTIONS='--selinux-enabled'
```
