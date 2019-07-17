---
scapolite:
    class: group
    version: '0.51'
id: ssh
id_namespace: org.ssgproject.RHEL-8
title: SSH Server
description: <see below>
values:
  - id: var_sshd_set_keepalive
    id_namespace: org.ssgproject.RHEL-8
    title: SSH Max Keep Alive Count
    description: |
        Specify
        the maximum number of idle message counts before session is terminated.
    type: number
    default: '0'
    definitions:
      - selector: '10'
        value: 10
      - selector: '3'
        value: 3
      - selector: '5'
        value: 5
      - selector: '0'
        value: 0
  - id: sshd_required
    id_namespace: org.ssgproject.RHEL-8
    title: SSH is required to be installed
    description: |
        Specify
        if the Policy requires SSH to be installed. Used by SSH Rules to
        determine if SSH should be uninstalled or configured.  
        A value of 0 means that the policy doesn\'t care if OpenSSH server is
        installed or not. If it is installed, scanner will check for it\'s
        configuration, if it\'s not installed, the check will pass.  
        A value of 1 indicates that OpenSSH server package is not required by
        the policy;  
        A value of 2 indicates that OpenSSH server package is required by the
        policy.
    type: number
    definitions:
      - value: 0
      - selector: no
        value: 1
      - selector: yes
        value: 2
  - id: firewalld_sshd_zone
    id_namespace: org.ssgproject.RHEL-8
    title: SSH enabled firewalld zone
    description: |
        Specify
        firewalld zone to enable SSH service. This value is used only for
        remediation purposes.
    type: string
    default: public
    definitions:
      - selector: block
        value: block
      - selector: dmz
        value: dmz
      - selector: drop
        value: drop
      - selector: external
        value: external
      - selector: home
        value: home
      - selector: internal
        value: internal
      - selector: public
        value: public
      - selector: trusted
        value: trusted
      - selector: work
        value: work
  - id: sshd_approved_macs
    id_namespace: org.ssgproject.RHEL-8
    title: SSH Approved MACs by FIPS
    description: |
        Specify
        the FIPS approved MACs (message authentication code) algorithms that are
        used for data integrity protection by the SSH server.
    type: string
    definitions:
      - value: hmac-sha2-512,hmac-sha2-256,hmac-sha1,hmac-sha1-etm@openssh.com,hmac-sha2-256-etm@openssh.com,hmac-sha2-512-etm@openssh.com
  - id: sshd_listening_port
    id_namespace: org.ssgproject.RHEL-8
    title: SSH Server Listening Port
    description: |
        Specify
        port the SSH server is listening.
    type: number
    definitions:
      - value: 22
  - id: sshd_max_auth_tries_value
    id_namespace: org.ssgproject.RHEL-8
    title: SSH Max authentication attempts
    description: |
        Specify
        the maximum number of authentication attempts per connection.
    type: number
    default: '4'
    definitions:
      - selector: '10'
        value: 10
      - selector: '3'
        value: 3
      - selector: '4'
        value: 4
      - selector: '5'
        value: 5
  - id: sshd_idle_timeout_value
    id_namespace: org.ssgproject.RHEL-8
    title: SSH session Idle time
    description: |
        Specify
        duration of allowed idle time.
    type: number
    default: 5_minutes
    definitions:
      - selector: 10_minutes
        value: 600
      - selector: 120_minutes
        value: 7200
      - selector: 15_minutes
        value: 900
      - selector: 30_minutes
        value: 1800
      - selector: 5_minutes
        value: 300
      - selector: 60_minutes
        value: 3600
contents:
  - class: group_ref
    idref: ssh_server
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure OpenSSH Server if Necessary
  - class: rule_ref
    idref: service_sshd_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable SSH Server If Possible (Unusual)
  - class: rule_ref
    idref: file_permissions_sshd_pub_key
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify Permissions on SSH Server Public \*.pub Key Files
  - class: rule_ref
    idref: service_sshd_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the OpenSSH Service
  - class: rule_ref
    idref: firewalld_sshd_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Remove SSH Server firewalld Firewall exception (Unusual)
  - class: rule_ref
    idref: iptables_sshd_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Remove SSH Server iptables Firewall exception (Unusual)
  - class: rule_ref
    idref: file_permissions_sshd_private_key
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify Permissions on SSH Server Private \*\_key Key Files
  - class: rule_ref
    idref: package_openssh-server_installed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install the OpenSSH Server Package
---


## /description

The
SSH protocol is recommended for remote login and remote file transfer.
SSH provides confidentiality and integrity for data exchanged between
two systems, as well as server authentication, through the use of public
key cryptography. The implementation included with the system is called
OpenSSH, and more detailed documentation is available from its website,
<http://www.openssh.org>. Its server program is called `sshd` and
provided by the RPM package `openssh-server`.
