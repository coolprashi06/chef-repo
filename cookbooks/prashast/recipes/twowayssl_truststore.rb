include_recipe 'chef-vault-util::default'

truststore_item = chef_vault_item(node['prashast']['vault_password'], node['prashast']['vault_truststore_item_name'])

truststore_password = truststore_item[node['prashast']['vault_truststore_password_property']]


directory node['prashast']['ssl_home'] do
    owner node['prashast']['user']
    group node['prashast']['group']
    mode 0755
    recursive true
    action :create
end 

directory node['prashast']['trusted_certs_folder'] do
    owner node['prashast']['user']
    group node['prashast']['group']
    mode 0755
    recursive true
    action :create
end 

node['prashast']['trusted_certs'].each do |cert|
    pemfile = node['prashast']['trusted_certs_folder'] + '/' + cert + '.pem'
    
    cookbook_file pemfile do
        source "trusted/#{cert}.pem"
        mode 0755
        owner node['prashast']['user']
        group node['prashast']['group']
    end
    
    execute "import #{cert} into truststore" do
        user node['prashast']['user']
        group node['prashast']['group']
        command "#{node['java']['jdk_keytool']} -import -trustcacerts -alias #{cert} -file #{pemfile} -keystore #{node['prashast']['truststore']} -keypass #{truststore_password} -storepass #{truststore_password} -noprompt"
        not_if "#{node['java']['jdk_keytool']} -list -keystore #{node['prashast']['truststore']} -storepass #{truststore_password} -alias #{cert}"
    end
end 