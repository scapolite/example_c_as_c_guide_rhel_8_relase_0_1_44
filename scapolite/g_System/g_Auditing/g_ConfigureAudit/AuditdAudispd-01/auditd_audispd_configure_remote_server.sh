
var_audispd_remote_server="<sub idref="org.ssgproject.RHEL-8:var_audispd_remote_server" use="legacy"/>"


AUDITCONFIG=/etc/audit/audisp-remote.conf
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append $AUDITCONFIG '^remote_server' "$var_audispd_remote_server" "CCE-80925-1"

              
