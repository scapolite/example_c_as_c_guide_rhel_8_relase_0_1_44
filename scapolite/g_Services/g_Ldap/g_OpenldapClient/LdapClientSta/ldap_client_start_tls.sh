

# Use LDAP for authentication
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/sysconfig/authconfig' 'USELDAPAUTH' 'yes' '' '%s=%s'

# Configure client to use TLS for all authentications
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/nslcd.conf' 'ssl' 'start_tls' '' '%s %s'

              
