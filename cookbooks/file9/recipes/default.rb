#
# Cookbook Name:: file9
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute 'DHCP Installation' do
  command 'yum install dhcp* -y'
end