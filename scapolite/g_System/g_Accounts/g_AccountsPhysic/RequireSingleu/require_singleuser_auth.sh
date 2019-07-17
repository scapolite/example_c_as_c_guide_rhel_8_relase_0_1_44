
service_file="/usr/lib/systemd/system/rescue.service"

sulogin="/sbin/sulogin"

if grep "^ExecStart=.*" "$service_file" ; then
    sed -i "s%^ExecStart=.*%ExecStart=-$sulogin rescue%" "$service_file"
else
    echo "ExecStart=-$sulogin rescue" >> "$service_file"
fi

              
