
SYSTEMCTL_EXEC='/usr/bin/systemctl'
"$SYSTEMCTL_EXEC" start 'postfix.service'
"$SYSTEMCTL_EXEC" enable 'postfix.service'

            
