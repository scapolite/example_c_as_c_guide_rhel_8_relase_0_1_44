
inactivity_timeout_value="<sub idref="org.ssgproject.RHEL-8:inactivity_timeout_value" use="legacy"/>"
<sub idref="org.ssgproject.RHEL-8:function_include_dconf_settings" use="legacy"/>
include_dconf_settings

dconf_settings 'org/gnome/desktop/session' 'idle-delay' "uint32 ${inactivity_timeout_value}" 'local.d' '00-security-settings'
dconf_lock 'org/gnome/desktop/session' 'idle-delay' 'local.d' '00-security-settings-lock'

                
