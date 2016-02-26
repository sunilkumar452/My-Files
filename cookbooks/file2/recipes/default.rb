#
# Cookbook Name:: file2
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory "/sample1/sample2/sunil" do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
 end