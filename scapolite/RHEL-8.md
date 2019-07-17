---
scapolite:
    class: collection
    version: '0.51'
    lang: en
    format: md
id: RHEL-8
id_namespace: org.ssgproject
version: 0.1.44
status: draft
title: Guide to the Secure Configuration of Red Hat Enterprise Linux 8
notice: <see below>
objectives: <see below>
applicability:
  - system: https://scap.nist.gov/schema/cpe/2.3
    cpes:
      - cpe:/o:redhat:enterprise_linux:8
contents:
  - class: group_ref
    idref: intro
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Introduction
  - class: group_ref
    idref: remediation_functions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Remediation functions used by the SCAP Security Guide Proje ...
  - class: group_ref
    idref: system
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: System Settings
  - class: group_ref
    idref: services
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Services

profiles:
  - class: profile_ref
    idref: rht-ccp
    idref_namespace: org.ssgproject.RHEL-8
  - class: profile_ref
    idref: cjis
    idref_namespace: org.ssgproject.RHEL-8
  - class: profile_ref
    idref: standard
    idref_namespace: org.ssgproject.RHEL-8
  - class: profile_ref
    idref: hipaa
    idref_namespace: org.ssgproject.RHEL-8
  - class: profile_ref
    idref: cui
    idref_namespace: org.ssgproject.RHEL-8
  - class: profile_ref
    idref: pci-dss
    idref_namespace: org.ssgproject.RHEL-8
  - class: profile_ref
    idref: ospp
    idref_namespace: org.ssgproject.RHEL-8
history:
  - version: 0.1.44
    date: '2019-06-13'
    action: created
    short_description: draft
    internal_comment: ''
---


## /notice


This content has been produced from an import of the SCAP datastream of the

*Guide to the Secure Configuration of Red Hat Enterprise Linux 8*

as contained in [release 0.144](https://github.com/ComplianceAsCode/content/releases/tag/v0.1.44)
of the [ComplianceAsCode](https://github.com/ComplianceAsCode/content) Github repository.

into the Scapolite format.

Please refer to the [slide set about Scapolite](https://github.com/scapolite/docs/raw/master/201905_scap_v2_workshop/grobauer_siemens_scap_v2_experiences_scapolite.pdf)
that has been presented at NIST's SCAP v2 workshop for more information about Scapolite.

The copyright holder for the contents of the guide is RedHat, the 
license of the original SCAP content provided by `ComplianceAsCode` is as follows:

~~~
SPDX license identifier: BSD-3-Clause
Copyright (c) 2012-2017, Red Hat, Inc.
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the <organization> nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
~~~

Please refer to [ComplianceAsCode](https://github.com/ComplianceAsCode/content) for
information about the guide and access to the authoritative versions of the guide.
This project merely uses the guide as an example of how SCAP content can be expressed
and enriched in Scapolite.

For feedback/questions/discussion please use the mailing list

https://list.nist.gov/scap-dev-authoring 


 

 Do
not attempt to implement any of the settings in this guide without first
testing them in a non-operational environment. The creators of this
guidance assume no responsibility whatsoever for its use by other
parties, and makes no guarantees, expressed or implied, about its
quality, reliability, or any other characteristic.

## /objectives

This
guide presents a catalog of security-relevant configuration settings for
Red Hat Enterprise Linux 8. It is a rendering of content structured in
the eXtensible Configuration Checklist Description Format (XCCDF) in
order to support security automation. The SCAP content is is available
in the `scap-security-guide` package which is developed at
<https://www.open-scap.org/security-policies/scap-security-guide>.  
  
Providing system administrators with such guidance informs them how to
securely configure systems under their control in a variety of network
roles. Policy makers and baseline creators can use this catalog of
settings, with its associated references to higher-level security
control catalogs, in order to assist them in security baseline creation.
This guide is a *catalog, not a checklist*, and satisfaction of every
item is not likely to be possible or sensible in many operational
scenarios. However, the XCCDF format enables granular selection and
adjustment of settings, and their association with OVAL and OCIL content
provides an automated checking capability. Transformations of this
document, and its associated automated checking content, are capable of
providing baselines that meet a diverse set of policy objectives. Some
example XCCDF *Profiles*, which are selections of items that form
checklists and can be used as baselines, are available with this guide.
They can be processed, in an automated fashion, with tools that support
the Security Content Automation Protocol (SCAP). The DISA STIG, which
provides required settings for US Department of Defense systems, is one
example of a baseline created from this guidance.
