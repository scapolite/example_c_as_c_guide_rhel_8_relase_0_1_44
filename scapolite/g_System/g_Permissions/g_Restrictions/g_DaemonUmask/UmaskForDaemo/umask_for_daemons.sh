
var_umask_for_daemons="<sub idref="org.ssgproject.RHEL-8:var_umask_for_daemons" use="legacy"/>"

grep -q ^umask /etc/init.d/functions && \
  sed -i "s/umask.*/umask $var_umask_for_daemons/g" /etc/init.d/functions
if ! [ $? -eq 0 ]; then
    echo "umask $var_umask_for_daemons" >> /etc/init.d/functions
fi

                
