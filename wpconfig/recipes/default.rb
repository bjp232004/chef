group 'www-data'

user 'deploy' do
  group 'www-data'
  system true
  shell '/bin/bash'
end

cookbook_file "/var/www/staging/wp-config.php" do
  source "wp-config.php"
  mode '0777'
  action :create
  owner 'deploy'
  group 'www-data'
end
