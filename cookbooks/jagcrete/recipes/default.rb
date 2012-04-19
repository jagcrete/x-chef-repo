#
# Cookbook Name:: chef-jagcrete
# Recipe:: default
#
# Copyright 2012, jagcrete, LLC
#
# All rights reserved - Do Not Redistribute

# install the ruby-shadow prereq
package "libshadow-ruby1.8"

bag_name = node[:bag_name] || 'users'

ids = data_bag( bag_name )

# for each id in the data_bag, create a user account
ids.each do |item|
  # get a user item out of the bag
  id = data_bag_item( bag_name, item )

  username = id['id']

  # create a user account using the data
  # from the data bag
  user_account username do
    # a comment about the user
    comment     id['comment'] || username
    # an array of ssh keys
    ssh_keys    id['ssh_keys']
    # we don't want to generate a priv/pub key for this user
    ssh_keygen  false
    # if we have a shadow password, set it
    # openssl passwd -1
    password    id['shadow'] unless id['shadow'].nil?
  end

  # add user to the configured groups
  # groups is expected to be an array
  id['groups'].each do |g|
    group g do
      members [ username ]
    end
  end unless id['groups'].nil?

end unless ids.nil?
