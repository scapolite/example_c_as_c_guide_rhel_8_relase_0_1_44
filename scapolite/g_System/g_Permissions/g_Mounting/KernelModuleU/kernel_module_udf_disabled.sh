if LC_ALL=C grep -q -m 1 "^install udf" /etc/modprobe.d/udf.conf ; then
	sed -i 's/^install udf.*/install udf /bin/true/g' /etc/modprobe.d/udf.conf
else
	echo -e "\n# Disable per security requirements" >> /etc/modprobe.d/udf.conf
	echo "install udf /bin/true" >> /etc/modprobe.d/udf.conf
fi

              
