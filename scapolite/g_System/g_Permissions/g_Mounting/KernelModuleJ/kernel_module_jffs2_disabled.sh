if LC_ALL=C grep -q -m 1 "^install jffs2" /etc/modprobe.d/jffs2.conf ; then
	sed -i 's/^install jffs2.*/install jffs2 /bin/true/g' /etc/modprobe.d/jffs2.conf
else
	echo -e "\n# Disable per security requirements" >> /etc/modprobe.d/jffs2.conf
	echo "install jffs2 /bin/true" >> /etc/modprobe.d/jffs2.conf
fi

              
