name "nlc-web"
description "nlc web server"
run_list [
  "role[base]",
  "recipe[nginx]",
  "recipe[php]",
  "recipe[php-fpm]",
]
