db_master = node[:scalarium][:roles]['db-master'][:instances].keys.first
template "/etc/phpmyadmin/config-db.php" do
  source "config-db.php.erb"
  mode "0660"
  variables(:host => node['phpmyadmin']['host'])
end