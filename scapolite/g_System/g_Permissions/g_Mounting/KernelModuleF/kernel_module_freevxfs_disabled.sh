if LC_ALL=C grep -q -m 1 "^install freevxfs" /etc/modprobe.d/freevxfs.conf ; then
	sed -i 's/^install freevxfs.*/install freevxfs /bin/true/g' /etc/modprobe.d/freevxfs.conf
else
	echo -e "\n# Disable per security requirements" >> /etc/modprobe.d/freevxfs.conf
	echo "install freevxfs /bin/true" >> /etc/modprobe.d/freevxfs.conf
fi

              
