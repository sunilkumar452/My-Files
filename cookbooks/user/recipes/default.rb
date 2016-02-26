#
# Cookbook Name:: user
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user 'sunil' do
#uid '505'
#gid '505'
shell '/bin/sh'
action :create
end