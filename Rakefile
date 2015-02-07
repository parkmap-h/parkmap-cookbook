version = '0.1.0'

desc 'create box'
task :box do
  sh 'vagrant destroy -f'
  sh 'berks vendor cookbooks'
  sh 'vagrant up'
  sh 'mkdir build'
  sh "vagrant package --output build/parkmap-#{version}.box"
end
