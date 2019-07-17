<sub idref="org.ssgproject.RHEL-8:function_include_dconf_settings" use="legacy"/>
include_dconf_settings

dconf_settings 'org/gnome/login-screen' 'banner-message-enable' 'true' 'gdm.d' '00-security-settings'
dconf_lock 'org/gnome/login-screen' 'banner-message-enable' 'gdm.d' '00-security-settings-lock'

                
