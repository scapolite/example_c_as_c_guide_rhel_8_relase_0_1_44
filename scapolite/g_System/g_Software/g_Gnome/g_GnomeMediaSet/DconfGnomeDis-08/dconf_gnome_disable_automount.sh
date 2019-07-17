<sub idref="org.ssgproject.RHEL-8:function_include_dconf_settings" use="legacy"/>
include_dconf_settings

dconf_settings 'org/gnome/desktop/media-handling' 'automount' 'false' 'local.d' '00-security-settings'
dconf_settings 'org/gnome/desktop/media-handling' 'automount-open' 'false' 'local.d' '00-security-settings'
dconf_settings 'org/gnome/desktop/media-handling' 'autorun-never' 'true' 'local.d' '00-security-settings'
dconf_lock 'org/gnome/desktop/media-handling' 'automount' 'local.d' '00-security-settings-lock'
dconf_lock 'org/gnome/desktop/media-handling' 'automount-open' 'local.d' '00-security-settings-lock'
dconf_lock 'org/gnome/desktop/media-handling' 'autorun-never' 'local.d' '00-security-settings-lock'

                
