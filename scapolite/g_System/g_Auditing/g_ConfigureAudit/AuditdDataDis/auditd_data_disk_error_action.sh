
var_auditd_disk_error_action="<sub idref="org.ssgproject.RHEL-8:var_auditd_disk_error_action" use="legacy"/>"

#
# If disk_error_action present in /etc/audit/auditd.conf, change value
# to var_auditd_disk_error_action, else
# add "disk_error_action = $var_auditd_disk_error_action" to /etc/audit/auditd.conf
#

if grep --silent ^disk_error_action /etc/audit/auditd.conf ; then
        sed -i 's/^disk_error_action.*/disk_error_action = '"$var_auditd_disk_error_action"'/g' /etc/audit/auditd.conf
else
        echo -e "\n# Set disk_error_action to $var_auditd_disk_error_action per security requirements" >> /etc/audit/auditd.conf
        echo "disk_error_action = $var_auditd_disk_error_action" >> /etc/audit/auditd.conf
fi

              
