<sub idref="org.ssgproject.RHEL-8:function_include_dconf_settings" use="legacy"/>
include_dconf_settings

dconf_settings 'org/gnome/Vino' 'authentication-methods' "['vnc']" 'local.d' '00-security-settings'
dconf_lock 'org/gnome/Vino' 'authentication-methods' 'local.d' '00-security-settings-lock'

                
