<sub idref="org.ssgproject.RHEL-8:function_include_dconf_settings" use="legacy"/>
include_dconf_settings

dconf_settings 'org/gnome/desktop/thumbnailers' 'disable-all' 'true' 'local.d' '00-security-settings'
dconf_lock 'org/gnome/desktop/thumbnailers' 'disable-all' 'local.d' '00-security-settings-lock'

                
