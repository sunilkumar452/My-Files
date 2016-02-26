#
# Cookbook Name:: test7
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory '/exp1/exp2/testdir' do
  owner 'root'
  group 'root'
  mode '755'
  action :create
end