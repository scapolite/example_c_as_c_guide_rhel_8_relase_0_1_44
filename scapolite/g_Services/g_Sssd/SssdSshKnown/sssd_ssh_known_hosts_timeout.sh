
var_sssd_ssh_known_hosts_timeout="<sub idref="org.ssgproject.RHEL-8:var_sssd_ssh_known_hosts_timeout" use="legacy"/>"

SSSD_CONF="/etc/sssd/sssd.conf"
SSH_KNOWN_HOSTS_TIMEOUT_REGEX="[[:space:]]*\[ssh]([^\n\[]*\n+)+?[[:space:]]*ssh_known_hosts_timeout"
SSH_REGEX="[[:space:]]*\[ssh]"

# Try find [ssh] and ssh_known_hosts_timeout in sssd.conf, if it exists, set to
# var_sssd_ssh_known_hosts_timeout, if it isn't here, add it, if [ssh] doesn't
# exist, add it there
if grep -qzosP $SSH_KNOWN_HOSTS_TIMEOUT_REGEX $SSSD_CONF; then
        sed -i "s/ssh_known_hosts_timeout[^(\n)]*/ssh_known_hosts_timeout = $var_sssd_ssh_known_hosts_timeout/" $SSSD_CONF
elif grep -qs $SSH_REGEX $SSSD_CONF; then
        sed -i "/$SSH_REGEX/a ssh_known_hosts_timeout = $var_sssd_ssh_known_hosts_timeout" $SSSD_CONF
else
        mkdir -p /etc/sssd
        touch $SSSD_CONF
        echo -e "[ssh]\nssh_known_hosts_timeout = $var_sssd_ssh_known_hosts_timeout" >> $SSSD_CONF
fi

            
