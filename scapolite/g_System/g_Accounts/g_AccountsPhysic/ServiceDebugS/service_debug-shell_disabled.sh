
SYSTEMCTL_EXEC='/usr/bin/systemctl'
"$SYSTEMCTL_EXEC" stop 'debug-shell.service'
"$SYSTEMCTL_EXEC" disable 'debug-shell.service'
# Disable socket activation if we have a unit file for it
"$SYSTEMCTL_EXEC" list-unit-files | grep -q '^debug-shell.socket\>' && "$SYSTEMCTL_EXEC" disable 'debug-shell.socket'
# The service may not be running because it has been started and failed,
# so let's reset the state so OVAL checks pass.
# Service should be 'inactive', not 'failed' after reboot though.
"$SYSTEMCTL_EXEC" reset-failed 'debug-shell.service'

              
