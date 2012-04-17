#
# Cookbook Name:: hostname
# Recipe:: default

# output the hostname
template "/etc/hostname" do
  source "hostname.erb"
  variables( :hostname => node[:muppet] )
  notifies :restart, "service[hostname]"
  owner "root"
  group "root"
  mode 0644
end

# output the hosts file
template "/etc/hosts" do
  source "hosts.erb"
  variables( :hostname => node[:muppet] )
  owner "root"
  group "root"
  mode 0644
end

# restart the hostname service
service "hostname" do
  action [:enable,:restart]
end
