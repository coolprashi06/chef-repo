## install chef-vault gem and include chef-vault recipe if not node['dev_mode']
unless node['dev_mode']
  chef_gem 'chef-vault' do
    version node['chef-vault']['version']
  end
  require 'chef-vault'
end
