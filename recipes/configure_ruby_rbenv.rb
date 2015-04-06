version = '2.2.0'
node.default.ruby.version = version

rbenv_ruby "#{node['ruby']['version']}" do
  ruby_version node['ruby']['version']
  global true
end

rbenv_gem "bundler" do
  ruby_version node['ruby']['version']
end
