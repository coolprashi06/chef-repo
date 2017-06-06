group node['prashast']['group'] do
end

user node['prashast']['user'] do
    comment 'prashast node user'
    home node['prashast']['home']
    gid node['prashast']['group']
    shell node['prashast']['shell']
end
