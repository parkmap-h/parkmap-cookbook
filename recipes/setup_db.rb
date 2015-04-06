include_recipe 'postgresql::server'
include_recipe 'database::postgresql'
postgresql_connection_info = {
  :host     => 'localhost',
  :port     => node.postgresql.config.port,
  :username => 'postgres',
  :password => node.postgresql.password.postgres
}

postgresql_database_user 'vagrant' do
  connection postgresql_connection_info
  superuser true
  action :create
end
