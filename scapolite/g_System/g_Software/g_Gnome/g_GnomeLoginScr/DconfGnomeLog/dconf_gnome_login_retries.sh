<sub idref="org.ssgproject.RHEL-8:function_include_dconf_settings" use="legacy"/>
include_dconf_settings

dconf_settings 'org/gnome/login-screen' 'allowed-failures' "3" 'gdm.d' '00-security-settings'
dconf_lock 'org/gnome/login-screen' 'allowed-failures' 'gdm.d' '00-security-settings-lock'

                
