---
scapolite:
    class: profile
    version: '0.51'
id: pci-dss
id_namespace: org.ssgproject.RHEL-8
title: PCI-DSS v3.2.1 Control Baseline for Red Hat Enterprise Linux 8
description: <see below>
selected:
  - idref_namespace: org.ssgproject.RHEL-8
    idref: service_auditd_enabled
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: grub2_audit_argument
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: auditd_data_retention_num_logs
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: auditd_data_retention_max_log_file
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: auditd_data_retention_max_log_file_action
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: auditd_data_retention_space_left_action
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: auditd_data_retention_admin_space_left_action
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: auditd_data_retention_action_mail_acct
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: auditd_audispd_syslog_plugin_activated
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
    idref: audit_rules_usergroup_modification_group
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_usergroup_modification_gshadow
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_usergroup_modification_opasswd
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_usergroup_modification_passwd
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_usergroup_modification_shadow
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_networkconfig_modification
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_permissions_var_log_audit
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_ownership_var_log_audit
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
    idref: audit_rules_login_events
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_session_events
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_unsuccessful_file_modification_creat
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_unsuccessful_file_modification_ftruncate
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_unsuccessful_file_modification_open
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_unsuccessful_file_modification_open_by_handle_at
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_unsuccessful_file_modification_openat
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_unsuccessful_file_modification_truncate
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_privileged_commands
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_media_export
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_file_deletion_events_rename
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_file_deletion_events_renameat
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_file_deletion_events_rmdir
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_file_deletion_events_unlink
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_file_deletion_events_unlinkat
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_sysadmin_actions
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_kernel_module_loading_create
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_kernel_module_loading_delete
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_kernel_module_loading_finit
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_kernel_module_loading_init
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_kernel_module_loading_insmod
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_kernel_module_loading_modprobe
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_kernel_module_loading_rmmod
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_rules_immutable
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: service_chronyd_or_ntpd_enabled
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: chronyd_or_ntpd_specify_remote_server
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: chronyd_or_ntpd_specify_multiple_servers
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: rpm_verify_permissions
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: rpm_verify_hashes
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: install_hids
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: rsyslog_files_permissions
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: rsyslog_files_ownership
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: rsyslog_files_groupownership
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: ensure_logrotate_activated
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: package_aide_installed
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: disable_prelink
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: aide_build_database
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: aide_periodic_cron_checking
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: account_unique_name
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: gid_passwd_group_same
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_password_all_shadowed
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: no_empty_passwords
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: display_login_attempts
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: account_disable_post_pw_expiration
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_passwords_pam_faillock_deny
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_passwords_pam_faillock_unlock_time
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: dconf_db_up_to_date
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: dconf_gnome_screensaver_idle_delay
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: dconf_gnome_screensaver_idle_activation_enabled
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: dconf_gnome_screensaver_lock_enabled
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: dconf_gnome_screensaver_mode_blank
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: sshd_set_idle_timeout
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_password_pam_minlen
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_password_pam_dcredit
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_password_pam_ucredit
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_password_pam_lcredit
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_password_pam_unix_remember
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: accounts_maximum_age_login_defs
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: ensure_redhat_gpgkey_installed
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: ensure_gpgcheck_globally_activated
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: ensure_gpgcheck_never_disabled
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: security_patches_up_to_date
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: package_opensc_installed
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: configure_opensc_nss_db
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: configure_opensc_card_drivers
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: force_opensc_card_drivers
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: package_pcsc-lite_installed
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: service_pcscd_enabled
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: sssd_enable_smartcards
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
    idref: file_owner_etc_shadow
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_groupowner_etc_shadow
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_permissions_etc_shadow
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
    idref: file_owner_etc_passwd
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_groupowner_etc_passwd
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_permissions_etc_passwd
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_owner_grub2_cfg
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: file_groupowner_grub2_cfg
    selected: true
  - idref_namespace: org.ssgproject.RHEL-8
    idref: package_libreswan_installed
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
    idref: configure_logwatch_on_logserver
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: audit_execution_selinux_commands
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
    idref: root_logins
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: console_screen_locking
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: password_quality_pamcracklib
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: sudo
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
    idref: disk_partitioning
    selected: false
  - idref_namespace: org.ssgproject.RHEL-8
    idref: fips
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
    idref: base
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

Ensures
PCI-DSS v3.2.1 security configuration settings are applied.
