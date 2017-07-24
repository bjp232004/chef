cookbook_file "/srv/www/wordpress/current/wp-config.php" do
  source "wp-config.php"
  mode '0777'
  action :create
  owner 'deploy'
end
