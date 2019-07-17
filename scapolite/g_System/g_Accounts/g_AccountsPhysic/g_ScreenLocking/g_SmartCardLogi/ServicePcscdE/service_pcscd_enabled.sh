
SYSTEMCTL_EXEC='/usr/bin/systemctl'
"$SYSTEMCTL_EXEC" start 'pcscd.service'
"$SYSTEMCTL_EXEC" enable 'pcscd.service'

                  
