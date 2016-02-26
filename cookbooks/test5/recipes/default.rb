#
# Cookbook Name:: test5
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{dir1 dir2 dir3}.each do |dir|
  directory "/root/#{dir}" do
    mode '0755'
    owner 'root'
    group 'root'
    action :create
    recursive true
  end
end
