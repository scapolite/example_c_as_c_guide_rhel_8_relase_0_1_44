
login_banner_text="<sub idref="org.ssgproject.RHEL-8:login_banner_text" use="legacy"/>"
<sub idref="org.ssgproject.RHEL-8:function_include_dconf_settings" use="legacy"/>
include_dconf_settings

expanded=$(echo "$login_banner_text" | sed 's/(\\\\\x27)\*/\\\x27/g;s/(\\\x27)\*//g;s/(\\\\\x27)/tamere/g;s/\^(\(.*\)|.*$/\1/g;s/\[\\s\\n\][+*]/ /g;s/\\//g;s/(n)\*/\\n/g;s/\x27/\\\x27/g;')

dconf_settings 'org/gnome/login-screen' 'banner-message-text' "string '${expanded}'" 'gdm.d' '00-security-settings'
dconf_lock 'org/gnome/login-screen' 'banner-message-text' 'gdm.d' '00-security-settings-lock'

                
