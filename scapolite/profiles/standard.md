---
scapolite:
    class: profile
    version: '0.51'
id: standard
id_namespace: org.ssgproject.RHEL-8
title: Standard System Security Profile for Red Hat Enterprise Linux 8
description: <see below>
selected:
  - idref_namespace: org.ssgproject.RHEL-8
    idref: ensure_redhat_gpgkey_installed
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: ensure_gpgcheck_globally_activated
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: rpm_verify_permissions
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: rpm_verify_hashes
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: security_patches_up_to_date
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: no_empty_passwords
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_permissions_unauthorized_sgid
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_permissions_unauthorized_suid
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_permissions_unauthorized_world_writable
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_root_path_dirs_no_write
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: dir_perms_world_writable_sticky_bits
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: mount_option_dev_shm_nodev
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: mount_option_dev_shm_nosuid
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: partition_for_var_log
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: partition_for_var_log_audit
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: package_rsyslog_installed
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: service_rsyslog_enabled
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_time_adjtimex
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_time_settimeofday
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_time_stime
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_time_clock_settime
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_time_watch_localtime
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_usergroup_modification
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_networkconfig_modification
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_mac_modification
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_dac_modification_chmod
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_dac_modification_chown
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_dac_modification_fchmod
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_dac_modification_fchmodat
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_dac_modification_fchown
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_dac_modification_fchownat
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_dac_modification_fremovexattr
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_dac_modification_fsetxattr
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_dac_modification_lchown
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_dac_modification_lremovexattr
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_dac_modification_lsetxattr
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_dac_modification_removexattr
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_dac_modification_setxattr
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_unsuccessful_file_modification
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_privileged_commands
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_media_export
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_file_deletion_events
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_sysadmin_actions
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_kernel_module_loading
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: service_abrtd_disabled
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: service_atd_disabled
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: service_autofs_disabled
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: service_ntpdate_disabled
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: service_oddjobd_disabled
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: service_qpidd_disabled
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: service_rdisc_disabled
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: configure_crypto_policy
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: configure_bind_crypto_policy
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: configure_openssl_crypto_policy
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: configure_libreswan_crypto_policy
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: configure_ssh_crypto_policy
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: configure_kerberos_crypto_policy
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: remediation_functions
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: rsyslog_sending_messages
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: rsyslog_accepting_remote_messages
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: ensure_rsyslog_log_file_configuration
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: log_rotation
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: configure_logwatch_on_logserver
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_execution_selinux_commands
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_login_events
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: configure_auditd_data_retention
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: user_umask
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts-banners
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: gui_login_banner
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: account_expiration
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: root_logins
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: password_expiration
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts-physical
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: screen_locking
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: console_screen_locking
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: smart_card_login
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts-pam
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: locking_out_password_attempts
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: set_password_hashing_algorithm
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: password_quality
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: password_quality_pwquality
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: password_quality_pamcracklib
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: sudo
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: gnome
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: gnome_screen_locking
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: gnome_media_settings
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: gnome_remote_access_settings
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: gnome_login_screen
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: gnome_network_settings
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: gnome_system_settings
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: aide
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: fips
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: endpoint_security_software
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: mcafee_security_software
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: mcafee_hbss_software
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: certified-vendor
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: sap_host
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: network
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: network_disable_unused_interfaces
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: network-ipsec
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: network-uncommon
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: network-iptables
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: iptables_ruleset_modifications
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: iptables_icmp_disabled
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: iptables_log_and_drop_suspicious
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: iptables_activation
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: network-firewalld
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: firewalld_activation
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: ruleset_modifications
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: network-ipv6
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: disabling_ipv6
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: configuring_ipv6
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: disabling_ipv6_autoconfig
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: network_ipv6_limit_requests
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: network-wireless
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: wireless_software
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: network-kernel
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: network_host_and_router_parameters
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: network_host_parameters
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: network_ssl
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: bootloader-grub-legacy
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: selinux
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: selinux-booleans
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: permissions_within_important_dirs
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: permissions_important_account_files
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: restrictions
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: coredumps
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: daemon_umask
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: enable_execshield_settings
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: enable_nx
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: poisoning
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: entropy
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: bootloader-grub2
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: routing
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: disabling_quagga
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: apt
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: dns
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: dns_server_isolation
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: dns_server_chroot
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: dns_server_dedicated
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: dns_server_protection
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: dns_server_partition_with_views
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: dns_server_separate_internal_external
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: disabling_dns_server
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: dhcp
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: disabling_dhcp_client
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: disabling_dhcp_server
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: dhcp_client_configuration
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: dhcp_server_configuration
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: obsolete
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: talk
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: r_services
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: telnet
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: nis
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: inetd_and_xinetd
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: tftp
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: sssd
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: sssd-ldap
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: http
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: disabling_httpd
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: securing_httpd
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: httpd_secure_content
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: httpd_minimize_loadable_modules
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: httpd_core_modules
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: httpd_basic_authentication
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: httpd_optional_components
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: httpd_minimize_config_files_included
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: httpd_restrict_info_leakage
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: httpd_configure_os_protect_web_server
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: httpd_chroot
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: httpd_restrict_file_dir_access
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: httpd_configure_php_securely
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: httpd_use_dos_protection_modules
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: httpd_configure_perl_securely
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: httpd_directory_restrictions
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: httpd_modules_improve_security
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: httpd_deploy_mod_security
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: httpd_deploy_mod_ssl
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: installing_httpd
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: httpd_minimal_modules_installed
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: xwindows
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: disabling_xwindows
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: docker
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: ssh
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: ssh_server
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: sshd_strengthen_firewall
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: snmp
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: snmp_configure_server
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: disabling_snmp_service
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: mail
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: postfix_client
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: postfix_harden_os
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: postfix_configure_ssl_certs
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: postfix_install_ssl_cert
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: postfix_server_cfg
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: postfix_server_relay
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: postfix_server_relay_smtp_auth_for_untrusted
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: postfix_server_mail_smtpd_recipient_restrictions
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: postfix_server_relay_require_tls
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: postfix_server_mail_smtpd_relay_restrictions
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: postfix_server_relay_set_trusted
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: postfix_server_dos
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: ftp
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: ftp_configure_vsftpd
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: ftp_restrict_users
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: ftp_use_vsftpd
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: disabling_vsftpd
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: ntp
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: proxy
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: disabling_squid
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: avahi
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: avahi_configuration
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: disable_avahi_group
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: ldap
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: openldap_server
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: ldap_server_config_certificate_files
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: openldap_client
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: printing
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: configure_printing
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: smb
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: configuring_samba
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: smb_restrict_file_sharing
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: smb_disable_printing
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: disabling_samba
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: restrict_at_cron_users
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: deprecated
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: nfs_and_rpc
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: nfs_configuring_clients
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: mounting_remote_filesystems
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: disabling_nfsd
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: nfs_configuring_all_machines
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: nfs_configure_fixed_ports
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: nfs_client_or_server_not_both
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: disabling_nfs
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: disabling_netfs
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: disabling_nfs_services
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: nfs_configuring_servers
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: use_acl_enforce_auth_restrictions
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: configure_exports_restrictively
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: export_filesystems_read_only
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: imap
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: configure_dovecot
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: dovecot_enabling_ssl
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: dovecot_support_necessary_protocols
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: dovecot_allow_imap_access
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: disabling_dovecot
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: intro
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: how-to-use
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: intro-root-shell-assumed
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: intro-test-non-production
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: intro-formatting-conventions
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: intro-read-sections-completely
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: intro-reboot-required
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: general-principles
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: principle-use-security-tools
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: principle-encrypt-transmitted-data
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: principle-least-privilege
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: principle-minimize-software
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: principle-separate-servers
    selected: false
---


## /description

This
profile contains rules to ensure standard security baseline of a Red Hat
Enterprise Linux 8 system. Regardless of your system\'s workload all of
these checks should pass.
