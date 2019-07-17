
var_accounts_maximum_age_login_defs="<sub idref="org.ssgproject.RHEL-8:var_accounts_maximum_age_login_defs" use="legacy"/>"

grep -q ^PASS_MAX_DAYS /etc/login.defs && \
  sed -i "s/PASS_MAX_DAYS.*/PASS_MAX_DAYS     $var_accounts_maximum_age_login_defs/g" /etc/login.defs
if ! [ $? -eq 0 ]; then
    echo "PASS_MAX_DAYS      $var_accounts_maximum_age_login_defs" >> /etc/login.defs
fi

                
