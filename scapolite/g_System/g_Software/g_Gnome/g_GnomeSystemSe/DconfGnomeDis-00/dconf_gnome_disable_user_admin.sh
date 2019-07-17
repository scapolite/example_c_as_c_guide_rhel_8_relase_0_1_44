<sub idref="org.ssgproject.RHEL-8:function_include_dconf_settings" use="legacy"/>
include_dconf_settings

dconf_settings 'org/gnome/desktop/lockdown' 'user-administration-disabled' 'true' 'local.d' '00-security-settings'
dconf_lock 'org/gnome/desktop/lockdown' 'user-administration-disabled' 'local.d' '00-security-settings-lock'

                
