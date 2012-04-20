#
# Cookbook Name:: pyrocms
# Recipe:: default
#
# Copyright 2012, jagcrete, LLC
#
# All rights reserved - Do Not Redistribute

pyrocms = node[:pyrocms]

# base directory used to download the zip
directory pyrocms[:basedir] do
  owner "root"
  group "root"
  mode "0755"
  action :create
end

# download the zip to the basedir
execute "download pyrocms zip" do
  # -N means only download only if remote timestamp is newer than local
  # -O specifies the file that the download will write to
  command "wget -N -O '#{pyrocms[:basedir]}/pyrocms.zip' #{pyrocms[:download_url]}#{pyrocms[:version]}"
end

# expand the pyrocms zip
