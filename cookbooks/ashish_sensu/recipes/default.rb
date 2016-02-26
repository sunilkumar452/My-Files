#
# Cookbook Name:: ashish_sensu
# Recipe:: default
#
# Copyright 2016, Relevance Lab Pvt LTD, Inc.
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

service 'sensu-server' do
  supports :restart => true,  :reload => true
       action [ :enable, :start ]
     end


# if node['platform'] == 'ubuntu'
#   include_recipe 'avi_sensu::debian'
# end



execute 'adduser' do 
command 'sudo rabbitmqctl add_vhost /sensu; sudo rabbitmqctl add_user sensu secret; sudo rabbitmqctl set_permissions -p /sensu sensu ".*" ".*" ".*"'
not_if 'rabbitmqctl list_users | grep sensu'
end
 

template '/etc/sensu/config.json' do
  source 'config.json.erb'
  mode '0755'
   variables(
     :hostname => "localhost"
   )
   notifies :restart, 'service[sensu-server]',:immediately
   notifies :restart, 'service[sensu-api]',:immediately
end

service "sensu-server" do
       supports :restart => true,  :reload => true
       action :nothing
        
    end


["sensu-server","sensu-api"].each do |serv|

    service serv do
       supports :restart => true,  :reload => true
       action [ :enable, :start ]
    end
end

 