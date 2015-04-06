include_attribute 'postgresql'

version = '9.4'
node.default.postgresql.version = version
node.default.postgresql.server.packages = ['postgresql-9.4-postgis-2.1']
# node.default.postgresql.pg_hba = [{:comment => '# Optional comment',:type => 'host', :db => 'all', :user => 'all', :addr => '::1/128', :method => 'trust'}]
node.default.postgresql.client.packages = ["postgresql-client-#{node.postgresql.version}","libpq-dev"]
node.default.postgresql.dir = "/etc/postgresql/#{version}/main"
node.default.postgresql.contrib.packages = ["postgresql-contrib-#{version}"]
node.default.postgresql.config.data_directory = "/var/lib/postgresql/#{version}/main"
node.default.postgresql.config.external_pid_file = "/var/run/postgresql/#{version}-main.pid"
node.default.postgresql.config.hba_file = "/etc/postgresql/#{version}/main/pg_hba.conf"
node.default.postgresql.config.ident_file = "/etc/postgresql/#{version}/main/pg_ident.conf"
node.default.postgresql.config.external_pid_file = "/var/run/postgresql/#{version}-main.pid"

include_attribute 'nginx'

