---
scapolite:
    class: group
    version: '0.51'
id: httpd_configure_php_securely
id_namespace: org.ssgproject.RHEL-8
title: Configure PHP Securely
description: <see below>
contents: []
---


## /description

PHP
is a widely-used and often misconfigured server-side scripting language.
It should be used with caution, but configured appropriately when
needed.  
  
Review `/etc/php.ini` and make the following changes if possible:

``` 
# Do not expose PHP error messages to external users
display_errors = Off

# Enable safe mode
safe_mode = On

# Only allow access to executables in isolated directory
safe_mode_exec_dir = php-required-executables-path

# Limit external access to PHP environment
safe_mode_allowed_env_vars = PHP_

# Restrict PHP information leakage
expose_php = Off

# Log all errors
log_errors = On

# Do not register globals for input data
register_globals = Off

# Minimize allowable PHP post size
post_max_size = 1K

# Ensure PHP redirects appropriately
cgi.force_redirect = 0

# Disallow uploading unless necessary
file_uploads = Off

# Disallow treatment of file requests as fopen calls
allow_url_fopen = Off

# Enable SQL safe mode
sql.safe_mode = On
```
