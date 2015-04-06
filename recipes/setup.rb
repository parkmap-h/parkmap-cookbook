case platform?
  when 'ubuntu'
    include_recipe 'apt'
  when 'centos'
    include_recipe 'yum'
    include_recipe 'yum-epel'
end

include_recipe 'parkmap::setup_db'
include_recipe 'parkmap::setup_ruby'
include_recipe 'nginx'