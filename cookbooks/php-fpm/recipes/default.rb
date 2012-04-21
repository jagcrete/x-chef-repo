#
# Cookbook Name:: php-fpm
# Recipe:: default
#
# Copyright 2012, jagcrete, LLC

package "php5-fpm" do
  action :install
end

fpm = node[:php_fpm]

unless fpm.nil? or fpm.empty? do
  
  # write out php.ini file
  template "/etc/php5/fpm/php.ini" do
    source "ini.loop.erb"
    variables( :ini => fpm[:ini] )
    owner "root"
    group "root"
    mode "0755" 
  end unless fpm[:ini].nil? or fpm[:ini].empty?

  # write out main.conf for php-fpm
  template "/etc/php5/fpm/main.conf" do
    source "ini.loop.erb"
    variables( :ini => fpm[:main_conf] )
    owner "root"
    group "root"
    mode "0755" 
  end unless fpm[:main_conf].nil? or fpm[:main_conf].empty?

  # write out pool conf files
  fpm[:pools].each do |name|
    properties = fpm[:pools][name]
    template "/etc/php5/fpm/pool.d/#{name}.conf" do
      source "ini.loop.erb"
      variables( :ini => properties )
      owner "root"
      group "root"
      mode "0755" 
    end unless properties.nil? or properties.empty?
  end unless fpm[:pools].nil?

end
