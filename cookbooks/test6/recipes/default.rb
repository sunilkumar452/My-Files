#
# Cookbook Name:: test6
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory '/home/sunil' do
  owner 'sunil'
  group 'sunil'
  mode '777'
  action :create
end