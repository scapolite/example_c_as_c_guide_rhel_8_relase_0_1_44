

if ! `rpm -q --quiet chrony` && ! `rpm -q --quiet ntp-`; then
<sub idref="org.ssgproject.RHEL-8:function_package_install" use="legacy"/>
  package_install chrony
  service_command enable chronyd
elif `rpm -q --quiet chrony`; then
  if ! [ `/usr/sbin/pidof ntpd` ] ; then
<sub idref="org.ssgproject.RHEL-8:function_service_command" use="legacy"/>
    service_command enable chronyd
  fi
else
<sub idref="org.ssgproject.RHEL-8:function_service_command" use="legacy"/>
  service_command enable ntpd
fi

            
