

# Set variables
var_accounts_fail_delay="<sub idref="org.ssgproject.RHEL-8:var_accounts_fail_delay" use="legacy"/>"
<sub idref="org.ssgproject.RHEL-8:function_replace_or_append" use="legacy"/>
replace_or_append '/etc/login.defs' '^FAIL_DELAY' "$var_accounts_fail_delay" '' '%s %s'

              
