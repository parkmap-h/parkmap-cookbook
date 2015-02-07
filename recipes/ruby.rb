node.default.rbenv.global = '2.2.0'
node.default.rbenv.rubies = [ '2.2.0' ]
node.default.rbenv.gems = { '2.2.0' => [{ 'name' => 'bundler' }]}

include_recipe 'git'
include_recipe 'nodejs'
include_recipe 'xml'
include_recipe 'ruby_build'

package 'libffi-dev'
include_recipe 'rbenv::system'
