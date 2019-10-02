#Customization S.D.
%w[ /home/django/configs ].each do |path|
  directory path do
    owner 'django'
    group 'django'
    mode '0755'
  end
end

template '/home/django/configs/.env' do
  source 'env.erb'
  owner 'django'
  group 'django'
  mode '0755'
end

execute "copy_env_file" do
  command "cp /home/django/configs/.env /home/django/repo/.env"
  cwd "/home/django/"
  user "django"
  group "django"
  action :run
end

