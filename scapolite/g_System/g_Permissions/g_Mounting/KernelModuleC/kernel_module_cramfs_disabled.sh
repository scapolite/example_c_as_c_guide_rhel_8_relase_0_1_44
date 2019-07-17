if LC_ALL=C grep -q -m 1 "^install cramfs" /etc/modprobe.d/cramfs.conf ; then
	sed -i 's/^install cramfs.*/install cramfs /bin/true/g' /etc/modprobe.d/cramfs.conf
else
	echo -e "\n# Disable per security requirements" >> /etc/modprobe.d/cramfs.conf
	echo "install cramfs /bin/true" >> /etc/modprobe.d/cramfs.conf
fi

              
