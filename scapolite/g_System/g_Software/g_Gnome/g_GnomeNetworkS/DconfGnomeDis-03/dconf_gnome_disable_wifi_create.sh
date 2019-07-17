<sub idref="org.ssgproject.RHEL-8:function_include_dconf_settings" use="legacy"/>
include_dconf_settings

dconf_settings 'org/gnome/nm-applet' 'disable-wifi-create' 'true' 'local.d' '00-security-settings'
dconf_lock 'org/gnome/nm-applet' 'disable-wifi-create' 'local.d' '00-security-settings-lock'

                
