
SYSTEMCTL_EXEC='/usr/bin/systemctl'
"$SYSTEMCTL_EXEC" start 'crond.service'
"$SYSTEMCTL_EXEC" enable 'crond.service'

            
