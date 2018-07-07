#
# Cookbook Name:: detwa_ntp
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package ['ntp' ] do
  action :upgrade
end

service 'ntp' do
  action [:enable, :start ]
end
