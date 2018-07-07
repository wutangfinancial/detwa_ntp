#
# Cookbook Name:: detwa_ntp
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package ['tree', 'ntp' ] do
  action :upgrade
end

template '/etc/motd' do
  source 'motd.erb'
  action :create
  owner 'root'
  group 'root'
  mode '0755'
end

service 'ntp' do
  action [:enable, :start ]
end
