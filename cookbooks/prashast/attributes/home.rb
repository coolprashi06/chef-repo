default['prashast']['home'] = '/apps/prashast'
default['prashast']['config'] = File.join(node['prashast']['home'],'config')
default['prashast']['templates'] = File.join(node['prashast']['home'],'templates')

default['prashast']['vault_appconfig'] = 'appconfig'
default['prashast']['vault_appconfig_item_name'] = 'dev_appconfig'
