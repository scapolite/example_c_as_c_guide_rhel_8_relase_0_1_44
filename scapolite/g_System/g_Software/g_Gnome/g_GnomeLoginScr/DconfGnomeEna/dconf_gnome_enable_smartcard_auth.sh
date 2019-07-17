<sub idref="org.ssgproject.RHEL-8:function_include_dconf_settings" use="legacy"/>
include_dconf_settings

dconf_settings 'org/gnome/login-screen' 'enable-smartcard-authentication' 'true' 'gdm.d' '00-security-settings'
dconf_lock 'org/gnome/login-screen' 'enable-smartcard-authentication' 'gdm.d' '00-security-settings-lock'

                
