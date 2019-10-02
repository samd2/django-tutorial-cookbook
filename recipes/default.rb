#
# Cookbook:: tutorial
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#

package 'mysql-client'
package 'libmysqlclient-dev'

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

