<sub idref="org.ssgproject.RHEL-8:function_package_install" use="legacy"/>
package_install aide

if ! grep -q "/usr/sbin/aide --check" /etc/crontab ; then
    echo "05 4 * * * root /usr/sbin/aide --check" >> /etc/crontab
fi

                  
