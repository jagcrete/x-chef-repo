fpm = default[:php_fpm]

# set the defaults for php-fpm php.ini to the defaults for php.ini
fpm[:ini] = default[:php][:ini]

#fpm[:main_conf] = {
#  "pid" => "/var/run/php5-fpm.pid",
#  "error_log" => "/var/log/php5-fpm.log",
#  "log_level" => "notice",
#  "include" => "/etc/php5/fpm/pool.d/*.conf",
#}

#fpm[:pools] = {}
