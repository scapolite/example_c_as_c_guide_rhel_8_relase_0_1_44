---
scapolite:
    class: rule
    version: '0.51'
id: httpd_limit_java_files
id_namespace: org.ssgproject.RHEL-8
title: Remove .java And .jpp Files
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: low
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-httpd_limit_java_files_ocil:questionnaire:1
        href: httpd_limit_java_files.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG490
    relation: ''
---


## /rule

Remove .java And .jpp Files

## /rationale

From
the source code in a .java or a .jpp file, the Java compiler produces a
binary file with an extension of .class. The .java or .jpp file would,
therefore, reveal sensitive information regarding an application\'s
logic and permissions to resources on the server. By contrast, the
.class file, because it is intended to be machine independent, is
referred to as bytecode. Bytecodes are run by the Java Virtual Machine
(JVM), or the Java Runtime Environment (JRE), via a browser configured
to permit Java code.

## /description

`.java`
and `.jpp` files should not exist and should be removed from the web
server.
