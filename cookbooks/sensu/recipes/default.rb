#
# Cookbook Name:: sensu
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

case node['platform']
when 'debian', 'ubuntu'
  include_recipe 'ashish_sensu::debian'
when 'redhat', 'centos' , 'fedora'
  include_recipe 'ashish_sensu::centos'
end


["rabbitmq-server","redis","uchiwa",].each do |pkg|
    package pkg do
        action :install
    end


    service pkg do
       supports :restart => true,  :reload => true
       action [ :enable, :start ]
    end
end

package sensu do
  action :install
end
