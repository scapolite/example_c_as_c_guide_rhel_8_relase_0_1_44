


AUDISP_REMOTE_CONFIG="/etc/audit/audisp-remote.conf"
option="^transport"
value="KRB5"
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append $AUDISP_REMOTE_CONFIG "$option" "$value" "CCE-80926-9"

              
