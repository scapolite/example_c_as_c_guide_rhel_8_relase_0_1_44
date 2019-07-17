if LC_ALL=C grep -q -m 1 "^install hfs" /etc/modprobe.d/hfs.conf ; then
	sed -i 's/^install hfs.*/install hfs /bin/true/g' /etc/modprobe.d/hfs.conf
else
	echo -e "\n# Disable per security requirements" >> /etc/modprobe.d/hfs.conf
	echo "install hfs /bin/true" >> /etc/modprobe.d/hfs.conf
fi

              
