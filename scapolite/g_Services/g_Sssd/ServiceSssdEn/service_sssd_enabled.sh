
SYSTEMCTL_EXEC='/usr/bin/systemctl'
"$SYSTEMCTL_EXEC" start 'sssd.service'
"$SYSTEMCTL_EXEC" enable 'sssd.service'

            
