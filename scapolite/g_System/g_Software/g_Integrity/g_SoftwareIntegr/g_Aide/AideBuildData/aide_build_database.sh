<sub idref="org.ssgproject.RHEL-8:function_package_install" use="legacy"/>
package_install aide

/usr/sbin/aide --init
/bin/cp -p /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz

                  
