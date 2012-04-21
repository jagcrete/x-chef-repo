name "nginx"
description "nginx server"
run_list [
  "role[base]",
  "recipe[nginx]"
]
