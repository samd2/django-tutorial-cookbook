#
# Cookbook:: tutorial
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#

include_recipe 'apt::default'
if platform_family?('debian')
  package 'mysql-client'
  package 'libmysqlclient-dev'
end

if platform_family?('rhel')
  package 'mysql'
  #package 'libmysqlclient-dev'
end


#should be in http_platform cookbook
#%w[ /opt/chef /opt/chef/run_record ].each do |path|
#  directory path do
#    owner 'root'
#    group 'root'
#    mode '0755'
#  end
#end

#should be in http_platform cookbook
#%w[ /etc/apache2 /etc/apache2/conf.d ].each do |path|
#  directory path do
#    owner 'root'
#    group 'root'
#    mode '0755'
#  end
#end

#should be in http_platform cookbook
#file '/etc/apache2/conf.d/django.conf' do
#  content 'placeholder'
#  mode '0755'
#  owner 'root'
#  group 'root'
#  action :create_if_missing
#end

#node['apache_service'] = "apache2"
include_recipe 'django_platform::default'
#include_recipe 'http_platform::default'

