---
scapolite:
    class: group
    version: '0.51'
id: docker
id_namespace: org.ssgproject.RHEL-8
title: Docker Service
description: <see below>
contents:
  - class: rule_ref
    idref: docker_selinux_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure SELinux support is enabled in Docker
---


## /description

The
docker service is necessary to create containers, which are
self-sufficient and self-contained applications using the resource
isolation features of the kernel.
