name "base"
description "base role"
run_list [
  "recipe[apt]",
  "recipe[ubuntu]",
  "recipe[hostname]",
  "recipe[ntp]",
  "recipe[user]",
  "recipe[jagcrete]"
]
