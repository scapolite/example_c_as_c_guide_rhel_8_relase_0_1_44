
var_accounts_user_umask="<sub idref="org.ssgproject.RHEL-8:var_accounts_user_umask" use="legacy"/>"

grep -q umask /etc/profile && \
  sed -i "s/umask.*/umask $var_accounts_user_umask/g" /etc/profile
if ! [ $? -eq 0 ]; then
    echo "umask $var_accounts_user_umask" >> /etc/profile
fi

                
