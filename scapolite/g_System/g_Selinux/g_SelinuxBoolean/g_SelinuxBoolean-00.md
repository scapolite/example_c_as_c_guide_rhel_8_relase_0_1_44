---
scapolite:
    class: group
    version: '0.51'
id: selinux-booleans
id_namespace: org.ssgproject.RHEL-8
title: SELinux - Booleans
description: <see below>
values:
  - id: var_virt_use_execmem
    id_namespace: org.ssgproject.RHEL-8
    title: virt\_use\_execmem SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_rsync_full_access
    id_namespace: org.ssgproject.RHEL-8
    title: rsync\_full\_access SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_tmpreaper_use_samba
    id_namespace: org.ssgproject.RHEL-8
    title: tmpreaper\_use\_samba SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_xguest_mount_media
    id_namespace: org.ssgproject.RHEL-8
    title: xguest\_mount\_media SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_selinuxuser_ping
    id_namespace: org.ssgproject.RHEL-8
    title: selinuxuser\_ping SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_staff_use_svirt
    id_namespace: org.ssgproject.RHEL-8
    title: staff\_use\_svirt SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_rsync_client
    id_namespace: org.ssgproject.RHEL-8
    title: rsync\_client SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_git_system_use_cifs
    id_namespace: org.ssgproject.RHEL-8
    title: git\_system\_use\_cifs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_dbadm_manage_user_files
    id_namespace: org.ssgproject.RHEL-8
    title: dbadm\_manage\_user\_files SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_mozilla_read_content
    id_namespace: org.ssgproject.RHEL-8
    title: mozilla\_read\_content SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_cups_execmem
    id_namespace: org.ssgproject.RHEL-8
    title: cups\_execmem SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_xen_use_nfs
    id_namespace: org.ssgproject.RHEL-8
    title: xen\_use\_nfs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_ftpd_use_fusefs
    id_namespace: org.ssgproject.RHEL-8
    title: ftpd\_use\_fusefs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_fenced_can_ssh
    id_namespace: org.ssgproject.RHEL-8
    title: fenced\_can\_ssh SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_rsync_anon_write
    id_namespace: org.ssgproject.RHEL-8
    title: rsync\_anon\_write SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_cvs_read_shadow
    id_namespace: org.ssgproject.RHEL-8
    title: cvs\_read\_shadow SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_serve_cobbler_files
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_serve\_cobbler\_files SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_xguest_use_bluetooth
    id_namespace: org.ssgproject.RHEL-8
    title: xguest\_use\_bluetooth SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_can_connect_mythtv
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_can\_connect\_mythtv SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_anon_write
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_anon\_write SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_setrlimit
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_setrlimit SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_daemons_use_tcp_wrapper
    id_namespace: org.ssgproject.RHEL-8
    title: daemons\_use\_tcp\_wrapper SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_postgresql_selinux_transmit_client_label
    id_namespace: org.ssgproject.RHEL-8
    title: postgresql\_selinux\_transmit\_client\_label SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_cobbler_use_cifs
    id_namespace: org.ssgproject.RHEL-8
    title: cobbler\_use\_cifs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_named_write_master_zones
    id_namespace: org.ssgproject.RHEL-8
    title: named\_write\_master\_zones SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_selinuxuser_share_music
    id_namespace: org.ssgproject.RHEL-8
    title: selinuxuser\_share\_music SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_nagios_run_sudo
    id_namespace: org.ssgproject.RHEL-8
    title: nagios\_run\_sudo SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_smbd_anon_write
    id_namespace: org.ssgproject.RHEL-8
    title: smbd\_anon\_write SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_virt_sandbox_use_all_caps
    id_namespace: org.ssgproject.RHEL-8
    title: virt\_sandbox\_use\_all\_caps SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_logging_syslogd_run_nagios_plugins
    id_namespace: org.ssgproject.RHEL-8
    title: logging\_syslogd\_run\_nagios\_plugins SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_tftp_home_dir
    id_namespace: org.ssgproject.RHEL-8
    title: tftp\_home\_dir SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_selinuxuser_execheap
    id_namespace: org.ssgproject.RHEL-8
    title: selinuxuser\_execheap SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_selinuxuser_direct_dri_enabled
    id_namespace: org.ssgproject.RHEL-8
    title: selinuxuser\_direct\_dri\_enabled SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_zarafa_setrlimit
    id_namespace: org.ssgproject.RHEL-8
    title: zarafa\_setrlimit SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_virt_rw_qemu_ga_data
    id_namespace: org.ssgproject.RHEL-8
    title: virt\_rw\_qemu\_ga\_data SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_logging_syslogd_can_sendmail
    id_namespace: org.ssgproject.RHEL-8
    title: logging\_syslogd\_can\_sendmail SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_use_nfs
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_use\_nfs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_spamassassin_can_network
    id_namespace: org.ssgproject.RHEL-8
    title: spamassassin\_can\_network SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_mozilla_plugin_can_network_connect
    id_namespace: org.ssgproject.RHEL-8
    title: mozilla\_plugin\_can\_network\_connect SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_xguest_connect_network
    id_namespace: org.ssgproject.RHEL-8
    title: xguest\_connect\_network SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_can_network_connect
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_can\_network\_connect SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_piranha_lvs_can_network_connect
    id_namespace: org.ssgproject.RHEL-8
    title: piranha\_lvs\_can\_network\_connect SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_cron_can_relabel
    id_namespace: org.ssgproject.RHEL-8
    title: cron\_can\_relabel SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_fips_mode
    id_namespace: org.ssgproject.RHEL-8
    title: fips\_mode SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_guest_exec_content
    id_namespace: org.ssgproject.RHEL-8
    title: guest\_exec\_content SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_can_check_spam
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_can\_check\_spam SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_ksmtuned_use_nfs
    id_namespace: org.ssgproject.RHEL-8
    title: ksmtuned\_use\_nfs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_irc_use_any_tcp_ports
    id_namespace: org.ssgproject.RHEL-8
    title: irc\_use\_any\_tcp\_ports SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_sanlock_use_nfs
    id_namespace: org.ssgproject.RHEL-8
    title: sanlock\_use\_nfs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_postfix_local_write_mail_spool
    id_namespace: org.ssgproject.RHEL-8
    title: postfix\_local\_write\_mail\_spool SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_pcp_read_generic_logs
    id_namespace: org.ssgproject.RHEL-8
    title: pcp\_read\_generic\_logs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_gluster_anon_write
    id_namespace: org.ssgproject.RHEL-8
    title: gluster\_anon\_write SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_postgresql_selinux_users_ddl
    id_namespace: org.ssgproject.RHEL-8
    title: postgresql\_selinux\_users\_ddl SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_zebra_write_config
    id_namespace: org.ssgproject.RHEL-8
    title: zebra\_write\_config SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_dontaudit_search_dirs
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_dontaudit\_search\_dirs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_cluster_manage_all_files
    id_namespace: org.ssgproject.RHEL-8
    title: cluster\_manage\_all\_files SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_xserver_object_manager
    id_namespace: org.ssgproject.RHEL-8
    title: xserver\_object\_manager SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_use_fusefs
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_use\_fusefs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_webadm_read_user_files
    id_namespace: org.ssgproject.RHEL-8
    title: webadm\_read\_user\_files SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_global_ssp
    id_namespace: org.ssgproject.RHEL-8
    title: global\_ssp SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_zabbix_can_network
    id_namespace: org.ssgproject.RHEL-8
    title: zabbix\_can\_network SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_saslauthd_read_shadow
    id_namespace: org.ssgproject.RHEL-8
    title: saslauthd\_read\_shadow SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_xdm_exec_bootloader
    id_namespace: org.ssgproject.RHEL-8
    title: xdm\_exec\_bootloader SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_polipo_connect_all_unreserved
    id_namespace: org.ssgproject.RHEL-8
    title: polipo\_connect\_all\_unreserved SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_nfs_export_all_ro
    id_namespace: org.ssgproject.RHEL-8
    title: nfs\_export\_all\_ro SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_selinuxuser_postgresql_connect_enabled
    id_namespace: org.ssgproject.RHEL-8
    title: selinuxuser\_postgresql\_connect\_enabled SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_logwatch_can_network_connect_mail
    id_namespace: org.ssgproject.RHEL-8
    title: logwatch\_can\_network\_connect\_mail SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_secure_mode_insmod
    id_namespace: org.ssgproject.RHEL-8
    title: secure\_mode\_insmod SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_virt_use_rawip
    id_namespace: org.ssgproject.RHEL-8
    title: virt\_use\_rawip SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_unprivuser_use_svirt
    id_namespace: org.ssgproject.RHEL-8
    title: unprivuser\_use\_svirt SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_use_gpg
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_use\_gpg SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_logrotate_use_nfs
    id_namespace: org.ssgproject.RHEL-8
    title: logrotate\_use\_nfs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_cdrecord_read_content
    id_namespace: org.ssgproject.RHEL-8
    title: cdrecord\_read\_content SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_run_ipa
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_run\_ipa SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_mmap_low_allowed
    id_namespace: org.ssgproject.RHEL-8
    title: mmap\_low\_allowed SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_virt_use_samba
    id_namespace: org.ssgproject.RHEL-8
    title: virt\_use\_samba SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_use_samba_home_dirs
    id_namespace: org.ssgproject.RHEL-8
    title: use\_samba\_home\_dirs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_racoon_read_shadow
    id_namespace: org.ssgproject.RHEL-8
    title: racoon\_read\_shadow SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_cobbler_use_nfs
    id_namespace: org.ssgproject.RHEL-8
    title: cobbler\_use\_nfs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_ssh_chroot_rw_homedirs
    id_namespace: org.ssgproject.RHEL-8
    title: ssh\_chroot\_rw\_homedirs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_mod_auth_ntlm_winbind
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_mod\_auth\_ntlm\_winbind SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_collectd_tcp_network_connect
    id_namespace: org.ssgproject.RHEL-8
    title: collectd\_tcp\_network\_connect SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_xserver_clients_write_xshm
    id_namespace: org.ssgproject.RHEL-8
    title: xserver\_clients\_write\_xshm SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_mozilla_plugin_bind_unreserved_ports
    id_namespace: org.ssgproject.RHEL-8
    title: mozilla\_plugin\_bind\_unreserved\_ports SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_tmpreaper_use_nfs
    id_namespace: org.ssgproject.RHEL-8
    title: tmpreaper\_use\_nfs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_user_exec_content
    id_namespace: org.ssgproject.RHEL-8
    title: user\_exec\_content SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_git_system_enable_homedirs
    id_namespace: org.ssgproject.RHEL-8
    title: git\_system\_enable\_homedirs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_can_connect_ldap
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_can\_connect\_ldap SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_can_connect_zabbix
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_can\_connect\_zabbix SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_neutron_can_network
    id_namespace: org.ssgproject.RHEL-8
    title: neutron\_can\_network SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_mock_enable_homedirs
    id_namespace: org.ssgproject.RHEL-8
    title: mock\_enable\_homedirs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_abrt_handle_event
    id_namespace: org.ssgproject.RHEL-8
    title: abrt\_handle\_event SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_lsmd_plugin_connect_any
    id_namespace: org.ssgproject.RHEL-8
    title: lsmd\_plugin\_connect\_any SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_puppetmaster_use_db
    id_namespace: org.ssgproject.RHEL-8
    title: puppetmaster\_use\_db SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_mailman_use_fusefs
    id_namespace: org.ssgproject.RHEL-8
    title: mailman\_use\_fusefs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_can_connect_ftp
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_can\_connect\_ftp SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_git_cgi_enable_homedirs
    id_namespace: org.ssgproject.RHEL-8
    title: git\_cgi\_enable\_homedirs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_privoxy_connect_any
    id_namespace: org.ssgproject.RHEL-8
    title: privoxy\_connect\_any SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_mozilla_plugin_use_spice
    id_namespace: org.ssgproject.RHEL-8
    title: mozilla\_plugin\_use\_spice SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_virt_transition_userdomain
    id_namespace: org.ssgproject.RHEL-8
    title: virt\_transition\_userdomain SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_use_fusefs_home_dirs
    id_namespace: org.ssgproject.RHEL-8
    title: use\_fusefs\_home\_dirs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_git_cgi_use_cifs
    id_namespace: org.ssgproject.RHEL-8
    title: git\_cgi\_use\_cifs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_boinc_execmem
    id_namespace: org.ssgproject.RHEL-8
    title: boinc\_execmem SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_sysadm_exec_content
    id_namespace: org.ssgproject.RHEL-8
    title: sysadm\_exec\_content SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_selinuxuser_tcp_server
    id_namespace: org.ssgproject.RHEL-8
    title: selinuxuser\_tcp\_server SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_use_lpd_server
    id_namespace: org.ssgproject.RHEL-8
    title: use\_lpd\_server SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_samba_domain_controller
    id_namespace: org.ssgproject.RHEL-8
    title: samba\_domain\_controller SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_login_console_enabled
    id_namespace: org.ssgproject.RHEL-8
    title: login\_console\_enabled SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_nfsd_anon_write
    id_namespace: org.ssgproject.RHEL-8
    title: nfsd\_anon\_write SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_glance_use_fusefs
    id_namespace: org.ssgproject.RHEL-8
    title: glance\_use\_fusefs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_container_connect_any
    id_namespace: org.ssgproject.RHEL-8
    title: container\_connect\_any SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_kdumpgui_run_bootloader
    id_namespace: org.ssgproject.RHEL-8
    title: kdumpgui\_run\_bootloader SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_virt_use_sanlock
    id_namespace: org.ssgproject.RHEL-8
    title: virt\_use\_sanlock SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_mozilla_plugin_use_gps
    id_namespace: org.ssgproject.RHEL-8
    title: mozilla\_plugin\_use\_gps SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_pcp_bind_all_unreserved_ports
    id_namespace: org.ssgproject.RHEL-8
    title: pcp\_bind\_all\_unreserved\_ports SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_postgresql_selinux_unconfined_dbadm
    id_namespace: org.ssgproject.RHEL-8
    title: postgresql\_selinux\_unconfined\_dbadm SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_staff_exec_content
    id_namespace: org.ssgproject.RHEL-8
    title: staff\_exec\_content SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_kerberos_enabled
    id_namespace: org.ssgproject.RHEL-8
    title: kerberos\_enabled SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_manage_ipa
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_manage\_ipa SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_daemons_enable_cluster_mode
    id_namespace: org.ssgproject.RHEL-8
    title: daemons\_enable\_cluster\_mode SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_selinuxuser_execstack
    id_namespace: org.ssgproject.RHEL-8
    title: selinuxuser\_execstack SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_glance_api_can_network
    id_namespace: org.ssgproject.RHEL-8
    title: glance\_api\_can\_network SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_builtin_scripting
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_builtin\_scripting SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_samba_share_fusefs
    id_namespace: org.ssgproject.RHEL-8
    title: samba\_share\_fusefs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_polipo_use_cifs
    id_namespace: org.ssgproject.RHEL-8
    title: polipo\_use\_cifs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_irssi_use_full_network
    id_namespace: org.ssgproject.RHEL-8
    title: irssi\_use\_full\_network SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_xdm_bind_vnc_tcp_port
    id_namespace: org.ssgproject.RHEL-8
    title: xdm\_bind\_vnc\_tcp\_port SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_squid_use_tproxy
    id_namespace: org.ssgproject.RHEL-8
    title: squid\_use\_tproxy SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_selinuxuser_execmod
    id_namespace: org.ssgproject.RHEL-8
    title: selinuxuser\_execmod SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_xserver_execmem
    id_namespace: org.ssgproject.RHEL-8
    title: xserver\_execmem SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_openvpn_enable_homedirs
    id_namespace: org.ssgproject.RHEL-8
    title: openvpn\_enable\_homedirs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_samba_export_all_ro
    id_namespace: org.ssgproject.RHEL-8
    title: samba\_export\_all\_ro SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_gluster_export_all_ro
    id_namespace: org.ssgproject.RHEL-8
    title: gluster\_export\_all\_ro SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_puppetagent_manage_all_files
    id_namespace: org.ssgproject.RHEL-8
    title: puppetagent\_manage\_all\_files SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_sys_script_anon_write
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_sys\_script\_anon\_write SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_varnishd_connect_any
    id_namespace: org.ssgproject.RHEL-8
    title: varnishd\_connect\_any SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_mount_anyfile
    id_namespace: org.ssgproject.RHEL-8
    title: mount\_anyfile SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_ftpd_connect_all_unreserved
    id_namespace: org.ssgproject.RHEL-8
    title: ftpd\_connect\_all\_unreserved SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_nscd_use_shm
    id_namespace: org.ssgproject.RHEL-8
    title: nscd\_use\_shm SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_zoneminder_run_sudo
    id_namespace: org.ssgproject.RHEL-8
    title: zoneminder\_run\_sudo SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_use_sasl
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_use\_sasl SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_exim_read_user_files
    id_namespace: org.ssgproject.RHEL-8
    title: exim\_read\_user\_files SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_selinuxuser_use_ssh_chroot
    id_namespace: org.ssgproject.RHEL-8
    title: selinuxuser\_use\_ssh\_chroot SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_abrt_anon_write
    id_namespace: org.ssgproject.RHEL-8
    title: abrt\_anon\_write SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_authlogin_radius
    id_namespace: org.ssgproject.RHEL-8
    title: authlogin\_radius SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_squid_connect_any
    id_namespace: org.ssgproject.RHEL-8
    title: squid\_connect\_any SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_ftpd_use_cifs
    id_namespace: org.ssgproject.RHEL-8
    title: ftpd\_use\_cifs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_polipo_session_users
    id_namespace: org.ssgproject.RHEL-8
    title: polipo\_session\_users SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_can_network_connect_cobbler
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_can\_network\_connect\_cobbler SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_dhcpd_use_ldap
    id_namespace: org.ssgproject.RHEL-8
    title: dhcpd\_use\_ldap SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_xend_run_blktap
    id_namespace: org.ssgproject.RHEL-8
    title: xend\_run\_blktap SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_verify_dns
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_verify\_dns SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_mod_auth_pam
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_mod\_auth\_pam SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_unconfined_chrome_sandbox_transition
    id_namespace: org.ssgproject.RHEL-8
    title: unconfined\_chrome\_sandbox\_transition SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_mpd_use_cifs
    id_namespace: org.ssgproject.RHEL-8
    title: mpd\_use\_cifs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_cluster_can_network_connect
    id_namespace: org.ssgproject.RHEL-8
    title: cluster\_can\_network\_connect SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_xdm_write_home
    id_namespace: org.ssgproject.RHEL-8
    title: xdm\_write\_home SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_enable_homedirs
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_enable\_homedirs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_fenced_can_network_connect
    id_namespace: org.ssgproject.RHEL-8
    title: fenced\_can\_network\_connect SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_mcelog_exec_scripts
    id_namespace: org.ssgproject.RHEL-8
    title: mcelog\_exec\_scripts SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_virt_use_fusefs
    id_namespace: org.ssgproject.RHEL-8
    title: virt\_use\_fusefs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_virt_use_usb
    id_namespace: org.ssgproject.RHEL-8
    title: virt\_use\_usb SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_pppd_for_user
    id_namespace: org.ssgproject.RHEL-8
    title: pppd\_for\_user SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_tty_comm
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_tty\_comm SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_unconfined_mozilla_plugin_transition
    id_namespace: org.ssgproject.RHEL-8
    title: unconfined\_mozilla\_plugin\_transition SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_authlogin_nsswitch_use_ldap
    id_namespace: org.ssgproject.RHEL-8
    title: authlogin\_nsswitch\_use\_ldap SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_ssh_keysign
    id_namespace: org.ssgproject.RHEL-8
    title: ssh\_keysign SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_domain_fd_use
    id_namespace: org.ssgproject.RHEL-8
    title: domain\_fd\_use SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_conman_can_network
    id_namespace: org.ssgproject.RHEL-8
    title: conman\_can\_network SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_virt_sandbox_use_mknod
    id_namespace: org.ssgproject.RHEL-8
    title: virt\_sandbox\_use\_mknod SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_virt_sandbox_use_netlink
    id_namespace: org.ssgproject.RHEL-8
    title: virt\_sandbox\_use\_netlink SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_dbus_sssd
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_dbus\_sssd SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_enable_ftp_server
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_enable\_ftp\_server SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_ftpd_use_nfs
    id_namespace: org.ssgproject.RHEL-8
    title: ftpd\_use\_nfs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_mcelog_server
    id_namespace: org.ssgproject.RHEL-8
    title: mcelog\_server SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_sanlock_use_fusefs
    id_namespace: org.ssgproject.RHEL-8
    title: sanlock\_use\_fusefs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_cron_userdomain_transition
    id_namespace: org.ssgproject.RHEL-8
    title: cron\_userdomain\_transition SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_git_cgi_use_nfs
    id_namespace: org.ssgproject.RHEL-8
    title: git\_cgi\_use\_nfs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_secure_mode_policyload
    id_namespace: org.ssgproject.RHEL-8
    title: secure\_mode\_policyload SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_icecast_use_any_tcp_ports
    id_namespace: org.ssgproject.RHEL-8
    title: icecast\_use\_any\_tcp\_ports SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_mplayer_execstack
    id_namespace: org.ssgproject.RHEL-8
    title: mplayer\_execstack SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_entropyd_use_audio
    id_namespace: org.ssgproject.RHEL-8
    title: entropyd\_use\_audio SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_nfs_export_all_rw
    id_namespace: org.ssgproject.RHEL-8
    title: nfs\_export\_all\_rw SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_tor_bind_all_unreserved_ports
    id_namespace: org.ssgproject.RHEL-8
    title: tor\_bind\_all\_unreserved\_ports SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_mcelog_client
    id_namespace: org.ssgproject.RHEL-8
    title: mcelog\_client SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_samba_export_all_rw
    id_namespace: org.ssgproject.RHEL-8
    title: samba\_export\_all\_rw SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_read_user_content
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_read\_user\_content SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_mcelog_foreground
    id_namespace: org.ssgproject.RHEL-8
    title: mcelog\_foreground SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_can_network_relay
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_can\_network\_relay SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_samba_create_home_dirs
    id_namespace: org.ssgproject.RHEL-8
    title: samba\_create\_home\_dirs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_git_session_bind_all_unreserved_ports
    id_namespace: org.ssgproject.RHEL-8
    title: git\_session\_bind\_all\_unreserved\_ports SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_openvpn_run_unconfined
    id_namespace: org.ssgproject.RHEL-8
    title: openvpn\_run\_unconfined SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_enable_cgi
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_enable\_cgi SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_sge_use_nfs
    id_namespace: org.ssgproject.RHEL-8
    title: sge\_use\_nfs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_secure_mode
    id_namespace: org.ssgproject.RHEL-8
    title: secure\_mode SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_dhcpc_exec_iptables
    id_namespace: org.ssgproject.RHEL-8
    title: dhcpc\_exec\_iptables SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_dbus_avahi
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_dbus\_avahi SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_ssi_exec
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_ssi\_exec SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_auditadm_exec_content
    id_namespace: org.ssgproject.RHEL-8
    title: auditadm\_exec\_content SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_antivirus_can_scan_system
    id_namespace: org.ssgproject.RHEL-8
    title: antivirus\_can\_scan\_system SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_cluster_use_execmem
    id_namespace: org.ssgproject.RHEL-8
    title: cluster\_use\_execmem SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_xguest_exec_content
    id_namespace: org.ssgproject.RHEL-8
    title: xguest\_exec\_content SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_samba_load_libgfapi
    id_namespace: org.ssgproject.RHEL-8
    title: samba\_load\_libgfapi SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_use_nfs_home_dirs
    id_namespace: org.ssgproject.RHEL-8
    title: use\_nfs\_home\_dirs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_domain_kernel_load_modules
    id_namespace: org.ssgproject.RHEL-8
    title: domain\_kernel\_load\_modules SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_secadm_exec_content
    id_namespace: org.ssgproject.RHEL-8
    title: secadm\_exec\_content SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_samba_portmapper
    id_namespace: org.ssgproject.RHEL-8
    title: samba\_portmapper SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_xend_run_qemu
    id_namespace: org.ssgproject.RHEL-8
    title: xend\_run\_qemu SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_openshift_use_nfs
    id_namespace: org.ssgproject.RHEL-8
    title: openshift\_use\_nfs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_pppd_can_insmod
    id_namespace: org.ssgproject.RHEL-8
    title: pppd\_can\_insmod SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_polyinstantiation_enabled
    id_namespace: org.ssgproject.RHEL-8
    title: polyinstantiation\_enabled SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_use_cifs
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_use\_cifs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_exim_can_connect_db
    id_namespace: org.ssgproject.RHEL-8
    title: exim\_can\_connect\_db SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_selinuxuser_mysql_connect_enabled
    id_namespace: org.ssgproject.RHEL-8
    title: selinuxuser\_mysql\_connect\_enabled SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_virt_use_xserver
    id_namespace: org.ssgproject.RHEL-8
    title: virt\_use\_xserver SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_graceful_shutdown
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_graceful\_shutdown SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_unified
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_unified SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_deny_ptrace
    id_namespace: org.ssgproject.RHEL-8
    title: deny\_ptrace SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_samba_share_nfs
    id_namespace: org.ssgproject.RHEL-8
    title: samba\_share\_nfs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_xdm_sysadm_login
    id_namespace: org.ssgproject.RHEL-8
    title: xdm\_sysadm\_login SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_spamd_enable_home_dirs
    id_namespace: org.ssgproject.RHEL-8
    title: spamd\_enable\_home\_dirs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_run_stickshift
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_run\_stickshift SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_dbadm_read_user_files
    id_namespace: org.ssgproject.RHEL-8
    title: dbadm\_read\_user\_files SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_gssd_read_tmp
    id_namespace: org.ssgproject.RHEL-8
    title: gssd\_read\_tmp SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_telepathy_connect_all_ports
    id_namespace: org.ssgproject.RHEL-8
    title: telepathy\_connect\_all\_ports SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_virt_sandbox_use_audit
    id_namespace: org.ssgproject.RHEL-8
    title: virt\_sandbox\_use\_audit SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_execmem
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_execmem SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_samba_run_unconfined
    id_namespace: org.ssgproject.RHEL-8
    title: samba\_run\_unconfined SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_awstats_purge_apache_log_files
    id_namespace: org.ssgproject.RHEL-8
    title: awstats\_purge\_apache\_log\_files SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_postgresql_can_rsync
    id_namespace: org.ssgproject.RHEL-8
    title: postgresql\_can\_rsync SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_tmp_exec
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_tmp\_exec SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_gluster_export_all_rw
    id_namespace: org.ssgproject.RHEL-8
    title: gluster\_export\_all\_rw SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_can_network_memcache
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_can\_network\_memcache SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_cron_system_cronjob_use_shares
    id_namespace: org.ssgproject.RHEL-8
    title: cron\_system\_cronjob\_use\_shares SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_logadm_exec_content
    id_namespace: org.ssgproject.RHEL-8
    title: logadm\_exec\_content SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_virt_use_nfs
    id_namespace: org.ssgproject.RHEL-8
    title: virt\_use\_nfs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_gpg_web_anon_write
    id_namespace: org.ssgproject.RHEL-8
    title: gpg\_web\_anon\_write SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_fcron_crond
    id_namespace: org.ssgproject.RHEL-8
    title: fcron\_crond SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_git_session_users
    id_namespace: org.ssgproject.RHEL-8
    title: git\_session\_users SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_nis_enabled
    id_namespace: org.ssgproject.RHEL-8
    title: nis\_enabled SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_openvpn_can_network_connect
    id_namespace: org.ssgproject.RHEL-8
    title: openvpn\_can\_network\_connect SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_cobbler_can_network_connect
    id_namespace: org.ssgproject.RHEL-8
    title: cobbler\_can\_network\_connect SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_glance_use_execmem
    id_namespace: org.ssgproject.RHEL-8
    title: glance\_use\_execmem SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_antivirus_use_jit
    id_namespace: org.ssgproject.RHEL-8
    title: antivirus\_use\_jit SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_can_sendmail
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_can\_sendmail SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_wine_mmap_zero_ignore
    id_namespace: org.ssgproject.RHEL-8
    title: wine\_mmap\_zero\_ignore SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_minidlna_read_generic_user_content
    id_namespace: org.ssgproject.RHEL-8
    title: minidlna\_read\_generic\_user\_content SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_virt_use_comm
    id_namespace: org.ssgproject.RHEL-8
    title: virt\_use\_comm SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_tor_can_network_relay
    id_namespace: org.ssgproject.RHEL-8
    title: tor\_can\_network\_relay SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_polipo_session_bind_all_unreserved_ports
    id_namespace: org.ssgproject.RHEL-8
    title: polipo\_session\_bind\_all\_unreserved\_ports SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_git_system_use_nfs
    id_namespace: org.ssgproject.RHEL-8
    title: git\_system\_use\_nfs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_prosody_bind_http_port
    id_namespace: org.ssgproject.RHEL-8
    title: prosody\_bind\_http\_port SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_samba_enable_home_dirs
    id_namespace: org.ssgproject.RHEL-8
    title: samba\_enable\_home\_dirs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_dbadm_exec_content
    id_namespace: org.ssgproject.RHEL-8
    title: dbadm\_exec\_content SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_use_ecryptfs_home_dirs
    id_namespace: org.ssgproject.RHEL-8
    title: use\_ecryptfs\_home\_dirs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_selinuxuser_udp_server
    id_namespace: org.ssgproject.RHEL-8
    title: selinuxuser\_udp\_server SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_tftp_anon_write
    id_namespace: org.ssgproject.RHEL-8
    title: tftp\_anon\_write SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_sanlock_use_samba
    id_namespace: org.ssgproject.RHEL-8
    title: sanlock\_use\_samba SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_daemons_dump_core
    id_namespace: org.ssgproject.RHEL-8
    title: daemons\_dump\_core SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_named_tcp_bind_http_port
    id_namespace: org.ssgproject.RHEL-8
    title: named\_tcp\_bind\_http\_port SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_logging_syslogd_use_tty
    id_namespace: org.ssgproject.RHEL-8
    title: logging\_syslogd\_use\_tty SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_zoneminder_anon_write
    id_namespace: org.ssgproject.RHEL-8
    title: zoneminder\_anon\_write SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_webadm_manage_user_files
    id_namespace: org.ssgproject.RHEL-8
    title: webadm\_manage\_user\_files SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_ssh_sysadm_login
    id_namespace: org.ssgproject.RHEL-8
    title: ssh\_sysadm\_login SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_sge_domain_can_network_connect
    id_namespace: org.ssgproject.RHEL-8
    title: sge\_domain\_can\_network\_connect SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_exim_manage_user_files
    id_namespace: org.ssgproject.RHEL-8
    title: exim\_manage\_user\_files SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_mysql_connect_any
    id_namespace: org.ssgproject.RHEL-8
    title: mysql\_connect\_any SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_swift_can_network
    id_namespace: org.ssgproject.RHEL-8
    title: swift\_can\_network SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_virt_sandbox_use_sys_admin
    id_namespace: org.ssgproject.RHEL-8
    title: virt\_sandbox\_use\_sys\_admin SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_ksmtuned_use_cifs
    id_namespace: org.ssgproject.RHEL-8
    title: ksmtuned\_use\_cifs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_polipo_use_nfs
    id_namespace: org.ssgproject.RHEL-8
    title: polipo\_use\_nfs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_gitosis_can_sendmail
    id_namespace: org.ssgproject.RHEL-8
    title: gitosis\_can\_sendmail SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_mozilla_plugin_use_bluejeans
    id_namespace: org.ssgproject.RHEL-8
    title: mozilla\_plugin\_use\_bluejeans SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_unconfined_login
    id_namespace: org.ssgproject.RHEL-8
    title: unconfined\_login SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_mpd_enable_homedirs
    id_namespace: org.ssgproject.RHEL-8
    title: mpd\_enable\_homedirs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_ftpd_full_access
    id_namespace: org.ssgproject.RHEL-8
    title: ftpd\_full\_access SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_condor_tcp_network_connect
    id_namespace: org.ssgproject.RHEL-8
    title: condor\_tcp\_network\_connect SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_mpd_use_nfs
    id_namespace: org.ssgproject.RHEL-8
    title: mpd\_use\_nfs SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_daemons_use_tty
    id_namespace: org.ssgproject.RHEL-8
    title: daemons\_use\_tty SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_run_preupgrade
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_run\_preupgrade SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_ftpd_use_passive_mode
    id_namespace: org.ssgproject.RHEL-8
    title: ftpd\_use\_passive\_mode SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_deny_execmem
    id_namespace: org.ssgproject.RHEL-8
    title: deny\_execmem SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_abrt_upload_watch_anon_write
    id_namespace: org.ssgproject.RHEL-8
    title: abrt\_upload\_watch\_anon\_write SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_cobbler_anon_write
    id_namespace: org.ssgproject.RHEL-8
    title: cobbler\_anon\_write SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_telepathy_tcp_connect_generic_network_ports
    id_namespace: org.ssgproject.RHEL-8
    title: telepathy\_tcp\_connect\_generic\_network\_ports SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_smartmon_3ware
    id_namespace: org.ssgproject.RHEL-8
    title: smartmon\_3ware SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_use_openstack
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_use\_openstack SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_selinuxuser_rw_noexattrfile
    id_namespace: org.ssgproject.RHEL-8
    title: selinuxuser\_rw\_noexattrfile SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: on
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_rsync_export_all_ro
    id_namespace: org.ssgproject.RHEL-8
    title: rsync\_export\_all\_ro SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_haproxy_connect_any
    id_namespace: org.ssgproject.RHEL-8
    title: haproxy\_connect\_any SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_ftpd_anon_write
    id_namespace: org.ssgproject.RHEL-8
    title: ftpd\_anon\_write SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_authlogin_yubikey
    id_namespace: org.ssgproject.RHEL-8
    title: authlogin\_yubikey SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_ftpd_connect_db
    id_namespace: org.ssgproject.RHEL-8
    title: ftpd\_connect\_db SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_virt_read_qemu_ga_data
    id_namespace: org.ssgproject.RHEL-8
    title: virt\_read\_qemu\_ga\_data SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_nagios_run_pnp4nagios
    id_namespace: org.ssgproject.RHEL-8
    title: nagios\_run\_pnp4nagios SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
  - id: var_httpd_can_network_connect_db
    id_namespace: org.ssgproject.RHEL-8
    title: httpd\_can\_network\_connect\_db SELinux Boolean
    description: |
        default
        - Default SELinux boolean setting.  
        on - SELinux boolean is enabled.  
        off - SELinux boolean is disabled.
    type: boolean
    default: off
    definitions:
      - selector: off
        value: 'false'
      - selector: on
        value: 'true'
contents:
  - class: rule_ref
    idref: sebool_virt_use_usb
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the virt\_use\_usb SELinux Boolean
  - class: rule_ref
    idref: sebool_ftpd_anon_write
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the ftpd\_anon\_write SELinux Boolean
  - class: rule_ref
    idref: sebool_dbadm_manage_user_files
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the dbadm\_manage\_user\_files SELinux Boolean
  - class: rule_ref
    idref: sebool_rsync_anon_write
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the rsync\_anon\_write SELinux Boolean
  - class: rule_ref
    idref: sebool_sanlock_use_samba
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the sanlock\_use\_samba SELinux Boolean
  - class: rule_ref
    idref: sebool_tor_bind_all_unreserved_ports
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the tor\_bind\_all\_unreserved\_ports SELinux Boole ...
  - class: rule_ref
    idref: sebool_virt_sandbox_use_all_caps
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the virt\_sandbox\_use\_all\_caps SELinux Boolean
  - class: rule_ref
    idref: sebool_mplayer_execstack
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the mplayer\_execstack SELinux Boolean
  - class: rule_ref
    idref: sebool_varnishd_connect_any
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the varnishd\_connect\_any SELinux Boolean
  - class: rule_ref
    idref: sebool_secadm_exec_content
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the secadm\_exec\_content SELinux Boolean
  - class: rule_ref
    idref: sebool_mozilla_read_content
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the mozilla\_read\_content SELinux Boolean
  - class: rule_ref
    idref: sebool_ssh_keysign
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the ssh\_keysign SELinux Boolean
  - class: rule_ref
    idref: sebool_gpg_web_anon_write
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the gpg\_web\_anon\_write SELinux Boolean
  - class: rule_ref
    idref: sebool_mozilla_plugin_use_bluejeans
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the mozilla\_plugin\_use\_bluejeans SELinux Boolean
  - class: rule_ref
    idref: sebool_selinuxuser_tcp_server
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the selinuxuser\_tcp\_server SELinux Boolean
  - class: rule_ref
    idref: sebool_openvpn_enable_homedirs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the openvpn\_enable\_homedirs SELinux Boolean
  - class: rule_ref
    idref: sebool_gluster_anon_write
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the gluster\_anon\_write SELinux Boolean
  - class: rule_ref
    idref: sebool_git_system_use_cifs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the git\_system\_use\_cifs SELinux Boolean
  - class: rule_ref
    idref: sebool_tmpreaper_use_samba
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the tmpreaper\_use\_samba SELinux Boolean
  - class: rule_ref
    idref: sebool_postgresql_can_rsync
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the postgresql\_can\_rsync SELinux Boolean
  - class: rule_ref
    idref: sebool_named_tcp_bind_http_port
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the named\_tcp\_bind\_http\_port SELinux Boolean
  - class: rule_ref
    idref: sebool_selinuxuser_use_ssh_chroot
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the selinuxuser\_use\_ssh\_chroot SELinux Boolean
  - class: rule_ref
    idref: sebool_boinc_execmem
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the boinc\_execmem SELinux Boolean
  - class: rule_ref
    idref: sebool_polipo_session_bind_all_unreserved_ports
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the polipo\_session\_bind\_all\_unreserved\_ports S ...
  - class: rule_ref
    idref: sebool_httpd_can_check_spam
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_can\_check\_spam SELinux Boolean
  - class: rule_ref
    idref: sebool_saslauthd_read_shadow
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the saslauthd\_read\_shadow SELinux Boolean
  - class: rule_ref
    idref: sebool_zabbix_can_network
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the zabbix\_can\_network SELinux Boolean
  - class: rule_ref
    idref: sebool_samba_share_nfs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the samba\_share\_nfs SELinux Boolean
  - class: rule_ref
    idref: sebool_postfix_local_write_mail_spool
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the postfix\_local\_write\_mail\_spool SELinux Boole ...
  - class: rule_ref
    idref: sebool_global_ssp
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the global\_ssp SELinux Boolean
  - class: rule_ref
    idref: sebool_exim_read_user_files
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the exim\_read\_user\_files SELinux Boolean
  - class: rule_ref
    idref: sebool_use_nfs_home_dirs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the use\_nfs\_home\_dirs SELinux Boolean
  - class: rule_ref
    idref: sebool_samba_share_fusefs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the samba\_share\_fusefs SELinux Boolean
  - class: rule_ref
    idref: sebool_awstats_purge_apache_log_files
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the awstats\_purge\_apache\_log\_files SELinux Bool ...
  - class: rule_ref
    idref: sebool_httpd_mod_auth_ntlm_winbind
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_mod\_auth\_ntlm\_winbind SELinux Boolean
  - class: rule_ref
    idref: sebool_tor_can_network_relay
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the tor\_can\_network\_relay SELinux Boolean
  - class: rule_ref
    idref: sebool_selinuxuser_rw_noexattrfile
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the selinuxuser\_rw\_noexattrfile SELinux Boolean
  - class: rule_ref
    idref: sebool_antivirus_can_scan_system
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the antivirus\_can\_scan\_system SELinux Boolean
  - class: rule_ref
    idref: sebool_selinuxuser_ping
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the selinuxuser\_ping SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_run_ipa
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_run\_ipa SELinux Boolean
  - class: rule_ref
    idref: sebool_cluster_can_network_connect
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the cluster\_can\_network\_connect SELinux Boolean
  - class: rule_ref
    idref: sebool_lsmd_plugin_connect_any
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the lsmd\_plugin\_connect\_any SELinux Boolean
  - class: rule_ref
    idref: sebool_gluster_export_all_rw
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure the gluster\_export\_all\_rw SELinux Boolean
  - class: rule_ref
    idref: sebool_tftp_home_dir
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the tftp\_home\_dir SELinux Boolean
  - class: rule_ref
    idref: sebool_selinuxuser_execmod
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the selinuxuser\_execmod SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_can_network_connect
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_can\_network\_connect SELinux Boolean
  - class: rule_ref
    idref: sebool_domain_fd_use
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the domain\_fd\_use SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_tty_comm
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_tty\_comm SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_enable_ftp_server
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_enable\_ftp\_server SELinux Boolean
  - class: rule_ref
    idref: sebool_xdm_sysadm_login
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the xdm\_sysadm\_login SELinux Boolean
  - class: rule_ref
    idref: sebool_abrt_anon_write
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the abrt\_anon\_write SELinux Boolean
  - class: rule_ref
    idref: sebool_smartmon_3ware
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the smartmon\_3ware SELinux Boolean
  - class: rule_ref
    idref: sebool_cron_can_relabel
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the cron\_can\_relabel SELinux Boolean
  - class: rule_ref
    idref: sebool_abrt_upload_watch_anon_write
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the abrt\_upload\_watch\_anon\_write SELinux Boolea ...
  - class: rule_ref
    idref: sebool_httpd_use_cifs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_use\_cifs SELinux Boolean
  - class: rule_ref
    idref: sebool_entropyd_use_audio
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the entropyd\_use\_audio SELinux Boolean
  - class: rule_ref
    idref: sebool_virt_use_nfs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the virt\_use\_nfs SELinux Boolean
  - class: rule_ref
    idref: sebool_postgresql_selinux_unconfined_dbadm
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the postgresql\_selinux\_unconfined\_dbadm SELinux B ...
  - class: rule_ref
    idref: sebool_ftpd_connect_all_unreserved
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the ftpd\_connect\_all\_unreserved SELinux Boolean
  - class: rule_ref
    idref: sebool_collectd_tcp_network_connect
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the collectd\_tcp\_network\_connect SELinux Boolean
  - class: rule_ref
    idref: sebool_puppetmaster_use_db
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the puppetmaster\_use\_db SELinux Boolean
  - class: rule_ref
    idref: sebool_unconfined_chrome_sandbox_transition
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the unconfined\_chrome\_sandbox\_transition SELinux  ...
  - class: rule_ref
    idref: sebool_httpd_manage_ipa
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_manage\_ipa SELinux Boolean
  - class: rule_ref
    idref: sebool_dbadm_read_user_files
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the dbadm\_read\_user\_files SELinux Boolean
  - class: rule_ref
    idref: sebool_ftpd_use_nfs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the ftpd\_use\_nfs SELinux Boolean
  - class: rule_ref
    idref: sebool_use_ecryptfs_home_dirs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the use\_ecryptfs\_home\_dirs SELinux Boolean
  - class: rule_ref
    idref: sebool_condor_tcp_network_connect
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the condor\_tcp\_network\_connect SELinux Boolean
  - class: rule_ref
    idref: sebool_samba_domain_controller
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the samba\_domain\_controller SELinux Boolean
  - class: rule_ref
    idref: sebool_staff_use_svirt
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the staff\_use\_svirt SELinux Boolean
  - class: rule_ref
    idref: sebool_dbadm_exec_content
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the dbadm\_exec\_content SELinux Boolean
  - class: rule_ref
    idref: sebool_virt_use_rawip
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the virt\_use\_rawip SELinux Boolean
  - class: rule_ref
    idref: sebool_gitosis_can_sendmail
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the gitosis\_can\_sendmail SELinux Boolean
  - class: rule_ref
    idref: sebool_virt_sandbox_use_sys_admin
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the virt\_sandbox\_use\_sys\_admin SELinux Boolean
  - class: rule_ref
    idref: sebool_dhcpd_use_ldap
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the dhcpd\_use\_ldap SELinux Boolean
  - class: rule_ref
    idref: sebool_mount_anyfile
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the mount\_anyfile SELinux Boolean
  - class: rule_ref
    idref: sebool_glance_api_can_network
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the glance\_api\_can\_network SELinux Boolean
  - class: rule_ref
    idref: sebool_squid_connect_any
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the squid\_connect\_any SELinux Boolean
  - class: rule_ref
    idref: sebool_spamassassin_can_network
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the spamassassin\_can\_network SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_unified
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_unified SELinux Boolean
  - class: rule_ref
    idref: sebool_samba_enable_home_dirs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the samba\_enable\_home\_dirs SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_dbus_avahi
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_dbus\_avahi SELinux Boolean
  - class: rule_ref
    idref: sebool_webadm_manage_user_files
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the webadm\_manage\_user\_files SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_verify_dns
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_verify\_dns SELinux Boolean
  - class: rule_ref
    idref: sebool_smbd_anon_write
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the smbd\_anon\_write SELinux Boolean
  - class: rule_ref
    idref: sebool_auditadm_exec_content
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the auditadm\_exec\_content SELinux Boolean
  - class: rule_ref
    idref: sebool_logging_syslogd_can_sendmail
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the logging\_syslogd\_can\_sendmail SELinux Boolean
  - class: rule_ref
    idref: sebool_cvs_read_shadow
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the cvs\_read\_shadow SELinux Boolean
  - class: rule_ref
    idref: sebool_fenced_can_network_connect
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the fenced\_can\_network\_connect SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_can_network_memcache
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_can\_network\_memcache SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_dbus_sssd
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_dbus\_sssd SELinux Boolean
  - class: rule_ref
    idref: sebool_cluster_manage_all_files
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the cluster\_manage\_all\_files SELinux Boolean
  - class: rule_ref
    idref: sebool_use_lpd_server
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the use\_lpd\_server SELinux Boolean
  - class: rule_ref
    idref: sebool_daemons_use_tcp_wrapper
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the daemons\_use\_tcp\_wrapper SELinux Boolean
  - class: rule_ref
    idref: sebool_samba_run_unconfined
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the samba\_run\_unconfined SELinux Boolean
  - class: rule_ref
    idref: sebool_puppetagent_manage_all_files
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the puppetagent\_manage\_all\_files SELinux Boolean
  - class: rule_ref
    idref: sebool_nfs_export_all_rw
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the nfs\_export\_all\_rw SELinux Boolean
  - class: rule_ref
    idref: sebool_deny_ptrace
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the deny\_ptrace SELinux Boolean
  - class: rule_ref
    idref: sebool_cron_system_cronjob_use_shares
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the cron\_system\_cronjob\_use\_shares SELinux Bool ...
  - class: rule_ref
    idref: sebool_swift_can_network
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the swift\_can\_network SELinux Boolean
  - class: rule_ref
    idref: sebool_abrt_handle_event
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the abrt\_handle\_event SELinux Boolean
  - class: rule_ref
    idref: sebool_virt_sandbox_use_netlink
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the virt\_sandbox\_use\_netlink SELinux Boolean
  - class: rule_ref
    idref: sebool_ftpd_use_fusefs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the ftpd\_use\_fusefs SELinux Boolean
  - class: rule_ref
    idref: sebool_xen_use_nfs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the xen\_use\_nfs SELinux Boolean
  - class: rule_ref
    idref: sebool_telepathy_tcp_connect_generic_network_ports
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the telepathy\_tcp\_connect\_generic\_network\_port ...
  - class: rule_ref
    idref: sebool_httpd_ssi_exec
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_ssi\_exec SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_can_connect_zabbix
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_can\_connect\_zabbix SELinux Boolean
  - class: rule_ref
    idref: sebool_mpd_enable_homedirs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the mpd\_enable\_homedirs SELinux Boolean
  - class: rule_ref
    idref: sebool_ftpd_use_cifs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the ftpd\_use\_cifs SELinux Boolean
  - class: rule_ref
    idref: sebool_user_exec_content
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the user\_exec\_content SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_builtin_scripting
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure the httpd\_builtin\_scripting SELinux Boolean
  - class: rule_ref
    idref: sebool_cups_execmem
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the cups\_execmem SELinux Boolean
  - class: rule_ref
    idref: sebool_virt_transition_userdomain
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the virt\_transition\_userdomain SELinux Boolean
  - class: rule_ref
    idref: sebool_conman_can_network
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the conman\_can\_network SELinux Boolean
  - class: rule_ref
    idref: sebool_postgresql_selinux_users_ddl
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the postgresql\_selinux\_users\_ddl SELinux Boolean
  - class: rule_ref
    idref: sebool_icecast_use_any_tcp_ports
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the icecast\_use\_any\_tcp\_ports SELinux Boolean
  - class: rule_ref
    idref: sebool_domain_kernel_load_modules
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the domain\_kernel\_load\_modules SELinux Boolean
  - class: rule_ref
    idref: sebool_virt_use_samba
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the virt\_use\_samba SELinux Boolean
  - class: rule_ref
    idref: sebool_antivirus_use_jit
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the antivirus\_use\_jit SELinux Boolean
  - class: rule_ref
    idref: sebool_named_write_master_zones
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the named\_write\_master\_zones SELinux Boolean
  - class: rule_ref
    idref: sebool_openvpn_can_network_connect
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the openvpn\_can\_network\_connect SELinux Boolean
  - class: rule_ref
    idref: sebool_zoneminder_anon_write
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the zoneminder\_anon\_write SELinux Boolean
  - class: rule_ref
    idref: sebool_polipo_session_users
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the polipo\_session\_users SELinux Boolean
  - class: rule_ref
    idref: sebool_nfs_export_all_ro
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the nfs\_export\_all\_ro SELinux Boolean
  - class: rule_ref
    idref: sebool_container_connect_any
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the container\_connect\_any SELinux Boolean
  - class: rule_ref
    idref: sebool_polipo_connect_all_unreserved
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the polipo\_connect\_all\_unreserved SELinux Boolea ...
  - class: rule_ref
    idref: sebool_ssh_chroot_rw_homedirs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the ssh\_chroot\_rw\_homedirs SELinux Boolean
  - class: rule_ref
    idref: sebool_xend_run_qemu
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the xend\_run\_qemu SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_can_sendmail
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_can\_sendmail SELinux Boolean
  - class: rule_ref
    idref: sebool_ksmtuned_use_cifs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the ksmtuned\_use\_cifs SELinux Boolean
  - class: rule_ref
    idref: sebool_zoneminder_run_sudo
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the zoneminder\_run\_sudo SELinux Boolean
  - class: rule_ref
    idref: sebool_authlogin_radius
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the authlogin\_radius SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_enable_cgi
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure the httpd\_enable\_cgi SELinux Boolean
  - class: rule_ref
    idref: sebool_piranha_lvs_can_network_connect
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the piranha\_lvs\_can\_network\_connect SELinux Boo ...
  - class: rule_ref
    idref: sebool_use_samba_home_dirs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the use\_samba\_home\_dirs SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_graceful_shutdown
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the httpd\_graceful\_shutdown SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_read_user_content
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_read\_user\_content SELinux Boolean
  - class: rule_ref
    idref: sebool_webadm_read_user_files
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the webadm\_read\_user\_files SELinux Boolean
  - class: rule_ref
    idref: sebool_mozilla_plugin_use_gps
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the mozilla\_plugin\_use\_gps SELinux Boolean
  - class: rule_ref
    idref: sebool_rsync_full_access
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the rsync\_full\_access SELinux Boolean
  - class: rule_ref
    idref: sebool_openvpn_run_unconfined
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the openvpn\_run\_unconfined SELinux Boolean
  - class: rule_ref
    idref: sebool_ssh_sysadm_login
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the ssh\_sysadm\_login SELinux Boolean
  - class: rule_ref
    idref: sebool_fips_mode
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the fips\_mode SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_use_sasl
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_use\_sasl SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_use_openstack
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_use\_openstack SELinux Boolean
  - class: rule_ref
    idref: sebool_git_cgi_use_cifs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the git\_cgi\_use\_cifs SELinux Boolean
  - class: rule_ref
    idref: sebool_guest_exec_content
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the guest\_exec\_content SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_can_connect_ldap
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_can\_connect\_ldap SELinux Boolean
  - class: rule_ref
    idref: sebool_postgresql_selinux_transmit_client_label
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the postgresql\_selinux\_transmit\_client\_label SE ...
  - class: rule_ref
    idref: sebool_samba_export_all_ro
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the samba\_export\_all\_ro SELinux Boolean
  - class: rule_ref
    idref: sebool_haproxy_connect_any
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the haproxy\_connect\_any SELinux Boolean
  - class: rule_ref
    idref: sebool_virt_use_sanlock
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the virt\_use\_sanlock SELinux Boolean
  - class: rule_ref
    idref: sebool_use_fusefs_home_dirs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the use\_fusefs\_home\_dirs SELinux Boolean
  - class: rule_ref
    idref: sebool_authlogin_yubikey
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the authlogin\_yubikey SELinux Boolean
  - class: rule_ref
    idref: sebool_kerberos_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the kerberos\_enabled SELinux Boolean
  - class: rule_ref
    idref: sebool_xguest_connect_network
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the xguest\_connect\_network SELinux Boolean
  - class: rule_ref
    idref: sebool_secure_mode_insmod
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the secure\_mode\_insmod SELinux Boolean
  - class: rule_ref
    idref: sebool_minidlna_read_generic_user_content
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the minidlna\_read\_generic\_user\_content SELinux  ...
  - class: rule_ref
    idref: sebool_xdm_exec_bootloader
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the xdm\_exec\_bootloader SELinux Boolean
  - class: rule_ref
    idref: sebool_nis_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the nis\_enabled SELinux Boolean
  - class: rule_ref
    idref: sebool_daemons_enable_cluster_mode
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the daemons\_enable\_cluster\_mode SELinux Boolean
  - class: rule_ref
    idref: sebool_tmpreaper_use_nfs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the tmpreaper\_use\_nfs SELinux Boolean
  - class: rule_ref
    idref: sebool_cobbler_can_network_connect
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the cobbler\_can\_network\_connect SELinux Boolean
  - class: rule_ref
    idref: sebool_unconfined_login
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the unconfined\_login SELinux Boolean
  - class: rule_ref
    idref: sebool_virt_use_xserver
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the virt\_use\_xserver SELinux Boolean
  - class: rule_ref
    idref: sebool_samba_load_libgfapi
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the samba\_load\_libgfapi SELinux Boolean
  - class: rule_ref
    idref: sebool_virt_read_qemu_ga_data
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the virt\_read\_qemu\_ga\_data SELinux Boolean
  - class: rule_ref
    idref: sebool_mozilla_plugin_can_network_connect
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the mozilla\_plugin\_can\_network\_connect SELinux  ...
  - class: rule_ref
    idref: sebool_xdm_write_home
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the xdm\_write\_home SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_can_network_connect_cobbler
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_can\_network\_connect\_cobbler SELinux B ...
  - class: rule_ref
    idref: sebool_xserver_object_manager
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the xserver\_object\_manager SELinux Boolean
  - class: rule_ref
    idref: sebool_pppd_can_insmod
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the pppd\_can\_insmod SELinux Boolean
  - class: rule_ref
    idref: sebool_exim_can_connect_db
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the exim\_can\_connect\_db SELinux Boolean
  - class: rule_ref
    idref: sebool_deny_execmem
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the deny\_execmem SELinux Boolean
  - class: rule_ref
    idref: sebool_sanlock_use_nfs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the sanlock\_use\_nfs SELinux Boolean
  - class: rule_ref
    idref: sebool_pcp_read_generic_logs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the pcp\_read\_generic\_logs SELinux Boolean
  - class: rule_ref
    idref: sebool_staff_exec_content
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the staff\_exec\_content SELinux Boolean
  - class: rule_ref
    idref: sebool_sanlock_use_fusefs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the sanlock\_use\_fusefs SELinux Boolean
  - class: rule_ref
    idref: sebool_xend_run_blktap
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the xend\_run\_blktap SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_can_network_connect_db
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_can\_network\_connect\_db SELinux Boolea ...
  - class: rule_ref
    idref: sebool_virt_sandbox_use_audit
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the virt\_sandbox\_use\_audit SELinux Boolean
  - class: rule_ref
    idref: sebool_cobbler_anon_write
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the cobbler\_anon\_write SELinux Boolean
  - class: rule_ref
    idref: sebool_cron_userdomain_transition
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the cron\_userdomain\_transition SELinux Boolean
  - class: rule_ref
    idref: sebool_git_session_users
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the git\_session\_users SELinux Boolean
  - class: rule_ref
    idref: sebool_samba_create_home_dirs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the samba\_create\_home\_dirs SELinux Boolean
  - class: rule_ref
    idref: sebool_kdumpgui_run_bootloader
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the kdumpgui\_run\_bootloader SELinux Boolean
  - class: rule_ref
    idref: sebool_xdm_bind_vnc_tcp_port
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the xdm\_bind\_vnc\_tcp\_port SELinux Boolean
  - class: rule_ref
    idref: sebool_selinuxuser_execheap
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the selinuxuser\_execheap SELinux Boolean
  - class: rule_ref
    idref: sebool_git_system_enable_homedirs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the git\_system\_enable\_homedirs SELinux Boolean
  - class: rule_ref
    idref: sebool_irc_use_any_tcp_ports
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the irc\_use\_any\_tcp\_ports SELinux Boolean
  - class: rule_ref
    idref: sebool_gssd_read_tmp
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the gssd\_read\_tmp SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_sys_script_anon_write
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_sys\_script\_anon\_write SELinux Boolean
  - class: rule_ref
    idref: sebool_telepathy_connect_all_ports
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the telepathy\_connect\_all\_ports SELinux Boolean
  - class: rule_ref
    idref: sebool_daemons_dump_core
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the daemons\_dump\_core SELinux Boolean
  - class: rule_ref
    idref: sebool_ksmtuned_use_nfs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the ksmtuned\_use\_nfs SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_run_preupgrade
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_run\_preupgrade SELinux Boolean
  - class: rule_ref
    idref: sebool_spamd_enable_home_dirs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the spamd\_enable\_home\_dirs SELinux Boolean
  - class: rule_ref
    idref: sebool_authlogin_nsswitch_use_ldap
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the authlogin\_nsswitch\_use\_ldap SELinux Boolean
  - class: rule_ref
    idref: sebool_polipo_use_nfs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the polipo\_use\_nfs SELinux Boolean
  - class: rule_ref
    idref: sebool_rsync_export_all_ro
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the rsync\_export\_all\_ro SELinux Boolean
  - class: rule_ref
    idref: sebool_logwatch_can_network_connect_mail
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the logwatch\_can\_network\_connect\_mail SELinux B ...
  - class: rule_ref
    idref: sebool_mmap_low_allowed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the mmap\_low\_allowed SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_mod_auth_pam
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_mod\_auth\_pam SELinux Boolean
  - class: rule_ref
    idref: sebool_gluster_export_all_ro
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the gluster\_export\_all\_ro SELinux Boolean
  - class: rule_ref
    idref: sebool_nagios_run_pnp4nagios
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the nagios\_run\_pnp4nagios SELinux Boolean
  - class: rule_ref
    idref: sebool_selinuxuser_udp_server
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the selinuxuser\_udp\_server SELinux Boolean
  - class: rule_ref
    idref: sebool_cobbler_use_cifs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the cobbler\_use\_cifs SELinux Boolean
  - class: rule_ref
    idref: sebool_git_system_use_nfs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the git\_system\_use\_nfs SELinux Boolean
  - class: rule_ref
    idref: sebool_nagios_run_sudo
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the nagios\_run\_sudo SELinux Boolean
  - class: rule_ref
    idref: sebool_pcp_bind_all_unreserved_ports
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the pcp\_bind\_all\_unreserved\_ports SELinux Boole ...
  - class: rule_ref
    idref: sebool_httpd_execmem
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_execmem SELinux Boolean
  - class: rule_ref
    idref: sebool_sysadm_exec_content
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the sysadm\_exec\_content SELinux Boolean
  - class: rule_ref
    idref: sebool_login_console_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the login\_console\_enabled SELinux Boolean
  - class: rule_ref
    idref: sebool_mcelog_exec_scripts
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the mcelog\_exec\_scripts SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_serve_cobbler_files
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_serve\_cobbler\_files SELinux Boolean
  - class: rule_ref
    idref: sebool_polyinstantiation_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the polyinstantiation\_enabled SELinux Boolean
  - class: rule_ref
    idref: sebool_xguest_mount_media
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the xguest\_mount\_media SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_use_gpg
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_use\_gpg SELinux Boolean
  - class: rule_ref
    idref: sebool_mcelog_client
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the mcelog\_client SELinux Boolean
  - class: rule_ref
    idref: sebool_zebra_write_config
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the zebra\_write\_config SELinux Boolean
  - class: rule_ref
    idref: sebool_xserver_clients_write_xshm
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the xserver\_clients\_write\_xshm SELinux Boolean
  - class: rule_ref
    idref: sebool_mailman_use_fusefs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the mailman\_use\_fusefs SELinux Boolean
  - class: rule_ref
    idref: sebool_git_cgi_use_nfs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the git\_cgi\_use\_nfs SELinux Boolean
  - class: rule_ref
    idref: sebool_daemons_use_tty
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the daemons\_use\_tty SELinux Boolean
  - class: rule_ref
    idref: sebool_git_cgi_enable_homedirs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the git\_cgi\_enable\_homedirs SELinux Boolean
  - class: rule_ref
    idref: sebool_fcron_crond
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the fcron\_crond SELinux Boolean
  - class: rule_ref
    idref: sebool_ftpd_full_access
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the ftpd\_full\_access SELinux Boolean
  - class: rule_ref
    idref: sebool_logging_syslogd_use_tty
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the logging\_syslogd\_use\_tty SELinux Boolean
  - class: rule_ref
    idref: sebool_samba_portmapper
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the samba\_portmapper SELinux Boolean
  - class: rule_ref
    idref: sebool_xguest_use_bluetooth
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the xguest\_use\_bluetooth SELinux Boolean
  - class: rule_ref
    idref: sebool_tftp_anon_write
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the tftp\_anon\_write SELinux Boolean
  - class: rule_ref
    idref: sebool_pppd_for_user
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the pppd\_for\_user SELinux Boolean
  - class: rule_ref
    idref: sebool_irssi_use_full_network
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the irssi\_use\_full\_network SELinux Boolean
  - class: rule_ref
    idref: sebool_mcelog_server
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the mcelog\_server SELinux Boolean
  - class: rule_ref
    idref: sebool_samba_export_all_rw
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the samba\_export\_all\_rw SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_run_stickshift
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_run\_stickshift SELinux Boolean
  - class: rule_ref
    idref: sebool_virt_use_comm
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the virt\_use\_comm SELinux Boolean
  - class: rule_ref
    idref: sebool_nfsd_anon_write
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the nfsd\_anon\_write SELinux Boolean
  - class: rule_ref
    idref: sebool_selinuxuser_direct_dri_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure the selinuxuser\_direct\_dri\_enabled SELinux Boo ...
  - class: rule_ref
    idref: sebool_neutron_can_network
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the neutron\_can\_network SELinux Boolean
  - class: rule_ref
    idref: sebool_openshift_use_nfs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the openshift\_use\_nfs SELinux Boolean
  - class: rule_ref
    idref: sebool_cobbler_use_nfs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the cobbler\_use\_nfs SELinux Boolean
  - class: rule_ref
    idref: sebool_unconfined_mozilla_plugin_transition
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the unconfined\_mozilla\_plugin\_transition SELinux  ...
  - class: rule_ref
    idref: sebool_mozilla_plugin_use_spice
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the mozilla\_plugin\_use\_spice SELinux Boolean
  - class: rule_ref
    idref: sebool_dhcpc_exec_iptables
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the dhcpc\_exec\_iptables SELinux Boolean
  - class: rule_ref
    idref: sebool_ftpd_connect_db
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the ftpd\_connect\_db SELinux Boolean
  - class: rule_ref
    idref: sebool_ftpd_use_passive_mode
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the ftpd\_use\_passive\_mode SELinux Boolean
  - class: rule_ref
    idref: sebool_virt_use_fusefs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the virt\_use\_fusefs SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_setrlimit
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_setrlimit SELinux Boolean
  - class: rule_ref
    idref: sebool_mozilla_plugin_bind_unreserved_ports
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the mozilla\_plugin\_bind\_unreserved\_ports SELinu ...
  - class: rule_ref
    idref: sebool_logrotate_use_nfs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the logrotate\_use\_nfs SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_use_nfs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_use\_nfs SELinux Boolean
  - class: rule_ref
    idref: sebool_unprivuser_use_svirt
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the unprivuser\_use\_svirt SELinux Boolean
  - class: rule_ref
    idref: sebool_virt_rw_qemu_ga_data
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the virt\_rw\_qemu\_ga\_data SELinux Boolean
  - class: rule_ref
    idref: sebool_secure_mode_policyload
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the secure\_mode\_policyload SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_tmp_exec
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_tmp\_exec SELinux Boolean
  - class: rule_ref
    idref: sebool_mysql_connect_any
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the mysql\_connect\_any SELinux Boolean
  - class: rule_ref
    idref: sebool_mpd_use_nfs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the mpd\_use\_nfs SELinux Boolean
  - class: rule_ref
    idref: sebool_selinuxuser_execstack
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: disable the selinuxuser\_execstack SELinux Boolean
  - class: rule_ref
    idref: sebool_glance_use_execmem
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the glance\_use\_execmem SELinux Boolean
  - class: rule_ref
    idref: sebool_selinuxuser_postgresql_connect_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the selinuxuser\_postgresql\_connect\_enabled SELin ...
  - class: rule_ref
    idref: sebool_virt_use_execmem
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the virt\_use\_execmem SELinux Boolean
  - class: rule_ref
    idref: sebool_wine_mmap_zero_ignore
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the wine\_mmap\_zero\_ignore SELinux Boolean
  - class: rule_ref
    idref: sebool_rsync_client
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the rsync\_client SELinux Boolean
  - class: rule_ref
    idref: sebool_git_session_bind_all_unreserved_ports
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the git\_session\_bind\_all\_unreserved\_ports SELi ...
  - class: rule_ref
    idref: sebool_logging_syslogd_run_nagios_plugins
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the logging\_syslogd\_run\_nagios\_plugins SELinux  ...
  - class: rule_ref
    idref: sebool_selinuxuser_mysql_connect_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the selinuxuser\_mysql\_connect\_enabled SELinux Bo ...
  - class: rule_ref
    idref: sebool_cdrecord_read_content
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the cdrecord\_read\_content SELinux Boolean
  - class: rule_ref
    idref: sebool_secure_mode
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the secure\_mode SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_anon_write
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_anon\_write SELinux Boolean
  - class: rule_ref
    idref: sebool_prosody_bind_http_port
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the prosody\_bind\_http\_port SELinux Boolean
  - class: rule_ref
    idref: sebool_sge_use_nfs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the sge\_use\_nfs SELinux Boolean
  - class: rule_ref
    idref: sebool_polipo_use_cifs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the polipo\_use\_cifs SELinux Boolean
  - class: rule_ref
    idref: sebool_nscd_use_shm
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the nscd\_use\_shm SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_can_network_relay
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_can\_network\_relay SELinux Boolean
  - class: rule_ref
    idref: sebool_mock_enable_homedirs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the mock\_enable\_homedirs SELinux Boolean
  - class: rule_ref
    idref: sebool_mcelog_foreground
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the mcelog\_foreground SELinux Boolean
  - class: rule_ref
    idref: sebool_squid_use_tproxy
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the squid\_use\_tproxy SELinux Boolean
  - class: rule_ref
    idref: sebool_sge_domain_can_network_connect
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the sge\_domain\_can\_network\_connect SELinux Bool ...
  - class: rule_ref
    idref: sebool_selinuxuser_share_music
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the selinuxuser\_share\_music SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_can_connect_ftp
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_can\_connect\_ftp SELinux Boolean
  - class: rule_ref
    idref: sebool_xguest_exec_content
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the xguest\_exec\_content SELinux Boolean
  - class: rule_ref
    idref: sebool_exim_manage_user_files
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the exim\_manage\_user\_files SELinux Boolean
  - class: rule_ref
    idref: sebool_cluster_use_execmem
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the cluster\_use\_execmem SELinux Boolean
  - class: rule_ref
    idref: sebool_mpd_use_cifs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the mpd\_use\_cifs SELinux Boolean
  - class: rule_ref
    idref: sebool_logadm_exec_content
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the logadm\_exec\_content SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_can_connect_mythtv
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_can\_connect\_mythtv SELinux Boolean
  - class: rule_ref
    idref: sebool_racoon_read_shadow
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the racoon\_read\_shadow SELinux Boolean
  - class: rule_ref
    idref: sebool_fenced_can_ssh
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the fenced\_can\_ssh SELinux Boolean
  - class: rule_ref
    idref: sebool_privoxy_connect_any
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the privoxy\_connect\_any SELinux Boolean
  - class: rule_ref
    idref: sebool_virt_sandbox_use_mknod
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the virt\_sandbox\_use\_mknod SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_dontaudit_search_dirs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_dontaudit\_search\_dirs SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_enable_homedirs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_enable\_homedirs SELinux Boolean
  - class: rule_ref
    idref: sebool_httpd_use_fusefs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the httpd\_use\_fusefs SELinux Boolean
  - class: rule_ref
    idref: sebool_zarafa_setrlimit
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the zarafa\_setrlimit SELinux Boolean
  - class: rule_ref
    idref: sebool_glance_use_fusefs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the glance\_use\_fusefs SELinux Boolean
  - class: rule_ref
    idref: sebool_xserver_execmem
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the xserver\_execmem SELinux Boolean
---


## /description

Enable
or Disable runtime customization of SELinux system policies without
having to reload or recompile the SELinux policy.
