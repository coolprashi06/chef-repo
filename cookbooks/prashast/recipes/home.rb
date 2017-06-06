include_recipe 'chef-vault-util::default'

directory node['prashast']['home'] do
    owner node['prashast']['user']
    group node['prashast']['group']
    mode 0775
    recursive true
    action :create
end

directory node['prashast']['config'] do
    owner node['prashast']['user']
    group node['prashast']['group']
    mode 0775
    recursive true
    action :create
end

directory node['prashast']['templates'] do
    owner node['prashast']['user']
    group node['prashast']['group']
    mode 0775
    recursive true
    action :create
end

template File.join(node['prashast']['templates'],'a.txt') do
    source 'a.erb'
    mode 0755
    owner node['prashast']['user']
    group node['prashast']['group']
end

cookbook_file File.join(node['prashast']['config'],'a.txt') do
    source 'a.txt'
    mode 0770
    user node['prashast']['user']
    group node['prashast']['group']
end

cookbook_file File.join(node['prashast']['config'],'b.txt') do
    source 'b.txt'
    mode 0770
    user node['prashast']['user']
    group node['prashast']['group']
end

cookbook_file File.join(node['prashast']['config'],'c.xml') do
    source 'c.xml'
    mode 0770
    user node['prashast']['user']
    group node['prashast']['group']
end

app_config= chef_vault_item(node['prashast']['vault_appconfig'],node['prashast']['vault_appconfig_item_name'])
file File.join(node['prashast']['config'],'application.json') do
    content app_config['file-content']
    user node['prashast']['user']
    group node['prashast']['group']
    mode 0750
end


    
