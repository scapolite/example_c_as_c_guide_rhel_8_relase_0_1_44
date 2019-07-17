---
scapolite:
    class: group
    version: '0.51'
id: smart_card_login
id_namespace: org.ssgproject.RHEL-8
title: Hardware Tokens for Authentication
description: <see below>
values:
  - id: var_smartcard_drivers
    id_namespace: org.ssgproject.RHEL-8
    title: OpenSC Smart Card Drivers
    description: |
        Choose
        the Smart Card Driver in use by your organization.  
        For DoD, choose the `cac` driver.  
        If your driver is not listed and you don\'t want to use the `default`
        driver, use the `other` option and manually specify your driver.
    type: string
    default: default
    interactive: true
    definitions:
      - value: default
      - selector: acos5
        value: acos5
      - selector: akis
        value: akis
      - selector: asepcos
        value: asepcos
      - selector: atrust-acos
        value: atrust-acos
      - selector: authentic
        value: authentic
      - selector: belpic
        value: belpic
      - selector: cac
        value: cac
      - selector: cardos
        value: cardos
      - selector: coolkey
        value: coolkey
      - selector: cyberflex
        value: cyberflex
      - selector: dnie
        value: dnie
      - selector: entersafe
        value: entersafe
      - selector: epass2003
        value: epass2003
      - selector: flex
        value: flex
      - selector: gemsafeV1
        value: gemsafeV1
      - selector: gids
        value: gids
      - selector: gpk
        value: gpk
      - selector: iasecc
        value: iasecc
      - selector: incrypto34
        value: incrypto34
      - selector: isoApplet
        value: isoApplet
      - selector: itacns
        value: itacns
      - selector: jpki
        value: jpki
      - selector: MaskTech
        value: MaskTech
      - selector: mcrd
        value: mcrd
      - selector: muscle
        value: muscle
      - selector: myeid
        value: myeid
      - selector: npa
        value: npa
      - selector: oberthur
        value: oberthur
      - selector: openpgp
        value: openpgp
      - selector: other
        value: None
      - selector: PIV-II
        value: PIV-II
      - selector: rutoken_ecp
        value: rutoken_ecp
      - selector: rutoken
        value: rutoken
      - selector: sc-hsm
        value: sc-hsm
      - selector: setcos
        value: setcos
      - selector: starcos
        value: starcos
      - selector: tcos
        value: tcos
      - selector: westcos
        value: westcos
contents:
  - class: rule_ref
    idref: configure_opensc_nss_db
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure NSS DB To Use opensc
  - class: rule_ref
    idref: smartcard_auth
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable Smart Card Login
  - class: rule_ref
    idref: service_pcscd_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the pcscd Service
  - class: rule_ref
    idref: configure_opensc_card_drivers
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure opensc Smart Card Drivers
  - class: rule_ref
    idref: force_opensc_card_drivers
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Force opensc To Use Defined Smart Card Driver
  - class: rule_ref
    idref: package_pcsc-lite_installed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install the pcsc-lite package
  - class: rule_ref
    idref: smartcard_configure_cert_checking
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Smart Card Certificate Status Checking
  - class: rule_ref
    idref: install_smartcard_packages
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install Smart Card Packages For Multifactor Authentication
  - class: rule_ref
    idref: package_opensc_installed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install the opensc Package For Multifactor Authentication
---


## /description

The
use of hardware tokens such as smart cards for system login provides
stronger, two-factor authentication than using a username and password.
In Red Hat Enterprise Linux servers and workstations, hardware token
login is not enabled by default and must be enabled in the system
settings.
