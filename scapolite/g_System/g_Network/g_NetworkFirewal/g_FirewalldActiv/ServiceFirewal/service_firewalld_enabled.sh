
SYSTEMCTL_EXEC='/usr/bin/systemctl'
"$SYSTEMCTL_EXEC" start 'firewalld.service'
"$SYSTEMCTL_EXEC" enable 'firewalld.service'

                
