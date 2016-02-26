#
# Cookbook Name:: file3
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute 'creating files using touch' do
  command 'touch /usr/file{6..10}'
end
