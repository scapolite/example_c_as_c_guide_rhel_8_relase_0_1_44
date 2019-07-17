
SYSTEMCTL_EXEC='/usr/bin/systemctl'
"$SYSTEMCTL_EXEC" start 'auditd.service'
"$SYSTEMCTL_EXEC" enable 'auditd.service'

            
