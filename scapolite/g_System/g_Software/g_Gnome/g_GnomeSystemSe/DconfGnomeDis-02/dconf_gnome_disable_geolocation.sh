<sub idref="org.ssgproject.RHEL-8:function_include_dconf_settings" use="legacy"/>
include_dconf_settings

dconf_settings 'org/gnome/system/location' 'enabled' 'false' 'local.d' '00-security-settings'
dconf_settings 'org/gnome/clocks' 'geolocation' 'false' 'local.d' '00-security-settings'
dconf_lock 'org/gnome/system/location' 'enabled' 'local.d' '00-security-settings-lock'
dconf_lock 'org/gnome/clocks' 'geolocation' 'local.d' '00-security-settings-lock'

                
