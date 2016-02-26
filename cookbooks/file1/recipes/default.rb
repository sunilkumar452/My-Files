#
# Cookbook Name:: file1
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

file '/dir1/example1.txt' do
  content 'This is an sample file.'
  mode '0777'
  owner 'root'
  group 'root'
end