
login_banner_text="<sub idref="org.ssgproject.RHEL-8:login_banner_text" use="legacy"/>"

# There was a regular-expression matching various banners, needs to be expanded
expanded=$(echo "$login_banner_text" | sed 's/(\\\\\x27)\*/\\\x27/g;s/(\\\x27)\*//g;s/\^(\(.*\)|.*$/\1/g;s/\[\\s\\n\][+*]/ /g;s/\\//g;s/[^-]- /\n\n-/g;s/(n)\**//g')
formatted=$(echo "$expanded" | fold -sw 80)

cat <<EOF >/etc/issue
$formatted
EOF

printf "\n" >> /etc/issue

              
