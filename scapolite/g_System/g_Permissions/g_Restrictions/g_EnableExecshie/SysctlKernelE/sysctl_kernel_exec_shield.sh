

if [ $(getconf LONG_BIT) = "32" ] ; then
  #
  # Set runtime for kernel.exec-shield
  #
  sysctl -q -n -w kernel.exec-shield=1

  #
  # If kernel.exec-shield present in /etc/sysctl.conf, change value to "1"
  #	else, add "kernel.exec-shield = 1" to /etc/sysctl.conf
  #
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
  replace_or_append '/etc/sysctl.conf' '^kernel.exec-shield' '1' 'CCE-80914-5'
fi

if [ $(getconf LONG_BIT) = "64" ] ; then
  if grep --silent noexec /boot/grub2/grub*.cfg ; then 
        sed -i "s/noexec.*//g" /etc/default/grub
        sed -i "s/noexec.*//g" /etc/grub.d/*
        GRUBCFG=`ls | grep '.cfg$'`
        grub2-mkconfig -o /boot/grub2/$GRUBCFG
  fi
fi

                
