#
# Cookbook Name:: jenkins
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'jenkins::java'

package 'jenkins' do
 action :install
end

service 'jenkins' do
 action :start
end