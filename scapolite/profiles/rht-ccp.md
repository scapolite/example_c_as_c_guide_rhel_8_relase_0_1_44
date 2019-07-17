---
scapolite:
    class: profile
    version: '0.51'
id: rht-ccp
id_namespace: org.ssgproject.RHEL-8
title: Red Hat Corporate Profile for Certified Cloud Providers (RH CCP)
description: <see below>
selected:
  - idref_namespace: org.ssgproject.RHEL-8
    idref: partition_for_tmp
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: partition_for_var
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: partition_for_var_log
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: partition_for_var_log_audit
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: selinux_state
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: selinux_policytype
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: ensure_redhat_gpgkey_installed
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: security_patches_up_to_date
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: ensure_gpgcheck_globally_activated
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: ensure_gpgcheck_never_disabled
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: package_aide_installed
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_password_pam_unix_remember
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: no_shelllogin_for_systemaccounts
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: no_empty_passwords
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_password_all_shadowed
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_no_uid_except_zero
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_password_minlen_login_defs
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_minimum_age_login_defs
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_password_warn_age_login_defs
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_password_pam_retry
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_password_pam_dcredit
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_password_pam_ucredit
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_password_pam_ocredit
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_password_pam_lcredit
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_password_pam_difok
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_passwords_pam_faillock_deny
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: set_password_hashing_algorithm_systemauth
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: set_password_hashing_algorithm_logindefs
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: set_password_hashing_algorithm_libuserconf
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: require_singleuser_auth
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_owner_etc_shadow
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_groupowner_etc_shadow
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_permissions_etc_shadow
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_owner_etc_gshadow
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_groupowner_etc_gshadow
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_permissions_etc_gshadow
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_owner_etc_passwd
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_groupowner_etc_passwd
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_permissions_etc_passwd
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_owner_etc_group
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_groupowner_etc_group
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_permissions_etc_group
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_permissions_library_dirs
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_ownership_library_dirs
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_permissions_binary_dirs
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_ownership_binary_dirs
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_permissions_var_log_audit
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_owner_grub2_cfg
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_groupowner_grub2_cfg
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_permissions_grub2_cfg
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: grub2_password
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: kernel_module_dccp_disabled
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: kernel_module_sctp_disabled
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: service_firewalld_enabled
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: set_firewalld_default_zone
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: firewalld_sshd_port_enabled
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: service_abrtd_disabled
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: service_telnet_disabled
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: package_telnet-server_removed
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: package_telnet_removed
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: sshd_allow_only_protocol2
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: sshd_set_idle_timeout
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: sshd_set_keepalive
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: sshd_disable_rhosts
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: disable_host_auth
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: sshd_disable_root_login
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: sshd_disable_empty_passwords
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: sshd_enable_warning_banner
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: sshd_do_not_permit_user_env
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: configure_crypto_policy
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: configure_ssh_crypto_policy
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: remediation_functions
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: logging
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
    idref: audit_kernel_module_loading
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_unsuccessful_file_modification
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_execution_selinux_commands
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_login_events
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_time_rules
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_dac_actions
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_file_deletion_events
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_privileged_commands
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: configure_auditd_data_retention
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts-session
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: root_paths
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
    idref: screen_locking
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: console_screen_locking
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: smart_card_login
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
    idref: rpm_verification
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
    idref: network_disable_unused_interfaces
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: network-ipsec
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
    idref: selinux-booleans
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: mounting
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
    idref: partitions
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: entropy
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
    idref: talk
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: r_services
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
    idref: cron_and_at
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
profile contains the minimum security relevant configuration settings
recommended by Red Hat, Inc for Red Hat Enterprise Linux 8 instances
deployed by Red Hat Certified Cloud Providers.
