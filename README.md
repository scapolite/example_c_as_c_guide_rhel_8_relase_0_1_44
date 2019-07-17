## Scapolite Example: *Guide to the Secure Configuration of Red Hat Enterprise Linux 8*


### Background

From April 30th to May 2nd 2019, NIST conducted a workshop on the
future of [SCAP](https://csrc.nist.gov/Projects/Security-Content-Automation-Protocol-v2).

During the workhop, the participants in the break-out sessions on the
future of XCCDF decided on founding a [work
group](https://groups.google.com/a/list.nist.gov/forum/#!forum/scap-dev-authoring)
on improving authoring and maintenance of SCAP content as manageable
text files under version control such as practiced by RedHat's
[Compliance-as-Code project](https://github.com/ComplianceAsCode/content) and Siemens'
[Scapolite
format](https://github.com/scapolite/docs/raw/master/201905_scap_v2_workshop/grobauer_siemens_scap_v2_experiences_scapolite.pdf)

The participants agreed that Siemens' Scapolite format looked like a promising candidate to be used as basis for a standard format and that it should be further evaluated. As first step in this evaluation, a complete example of
SCAP content maintained in Scapolite rather than XCCDF+OVAL should be published.

This repository contains such an example.


### Contents of this repository


This content has been produced from an import of the *Compliance as Code* project's 
*Guide to the Secure Configuration of Red Hat Enterprise Linux 8*
SCAP datastream into the Scapolite format:

- Folder `scapolite` contains the Scapolite representation of the guide:

  - the design of Scapolite allows the maintenance of each rule
    as a single file rather than maintaining the complete
    baseline within one huge XML file
  - the combination of a YAML preamble and a Markdown body
    allows authors to leverage the preview capabilities of
    modern editors and web sites such as github.com
  - rules can be augmented with machine-readable information
    either within the rule file as well as outside the file
    (as practiced in this example with OVAL and OCIL checks as well
    as implementation code in *Ansible*, *bash*, *anaconda*, and *Puppet*; 
    
- Folder `sources` contains the source XML which was imported

- A PDF representation of the guide (containing only partial information so
  as to provide an overview of the contents) is available as 
  file `c_as_c_guide_rhel_8_r0_1_44_scapolite_export.pdf`

 
Please refer to the [slide set about Scapolite](https://github.com/scapolite/docs/raw/master/201905_scap_v2_workshop/grobauer_siemens_scap_v2_experiences_scapolite.pdf)
that has been presented at NIST's SCAP v2 workshop for more information about Scapolite.

**ATTENTION**


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



