---
scapolite:
    class: group
    version: '0.51'
id: poisoning
id_namespace: org.ssgproject.RHEL-8
title: Memory Poisoning
description: <see below>
contents:
  - class: rule_ref
    idref: grub2_slub_debug_argument
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable SLUB/SLAB allocator poisoning
  - class: rule_ref
    idref: grub2_page_poison_argument
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable page allocator poisoning
---


## /description

Memory
Poisoning consists of writing a special value to uninitialized or freed
memory. Poisoning can be used as a mechanism to prevent leak of
information and detection of corrupted memory.
