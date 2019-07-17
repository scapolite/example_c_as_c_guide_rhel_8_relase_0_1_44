
var_screensaver_lock_delay="<sub idref="org.ssgproject.RHEL-8:var_screensaver_lock_delay" use="legacy"/>"
<sub idref="org.ssgproject.RHEL-8:function_include_dconf_settings" use="legacy"/>
include_dconf_settings

dconf_settings 'org/gnome/desktop/screensaver' 'lock-delay' "uint32 ${var_screensaver_lock_delay}" 'local.d' '00-security-settings'
dconf_lock 'org/gnome/desktop/screensaver' 'lock-delay' 'local.d' '00-security-settings-lock'

                
