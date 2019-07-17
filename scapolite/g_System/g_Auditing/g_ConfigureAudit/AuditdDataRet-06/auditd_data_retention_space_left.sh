
var_auditd_space_left="<sub idref="org.ssgproject.RHEL-8:var_auditd_space_left" use="legacy"/>"

grep -q "^space_left[[:space:]]*=.*$" /etc/audit/auditd.conf && \
  sed -i "s/^space_left[[:space:]]*=.*$/space_left = $var_auditd_space_left/g" /etc/audit/auditd.conf || \
  echo "space_left = $var_auditd_space_left" >> /etc/audit/auditd.conf

              
