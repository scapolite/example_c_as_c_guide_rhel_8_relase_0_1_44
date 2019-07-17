
SYSTEMCTL_EXEC='/usr/bin/systemctl'
"$SYSTEMCTL_EXEC" start 'ntpd.service'
"$SYSTEMCTL_EXEC" enable 'ntpd.service'

            
