java_ark 'jdk' do
    url node['java']['local_url']
    app_home node['java']['java_home']
    bin_cmds ['java','javac']
    owner node['prashast']['user']
    group node['prashast']['group']
    action :install
end


