default['prashast']['ssl_home'] = File.join(node['apps_dir'],'ssl')
default['prashast']['truststore'] = File.join(node['prashast']['ssl_home'], node['prashast']['servername']+ '.jks')

default['prashast']['trusted_certs_folder'] = File.join(node['apps_dir'],'trusted')
default['prashast']['trusted_certs'] = [
    'alice',
    'bob',
    'carol'
    ]

default['prashast']['vault_password'] = 'password' #this refers to the name of the vault.
default['prashast']['vault_truststore_item_name'] = 'dev_truststore' #this refers to the name of item in password named vault.
default['prashast']['vault_truststore_password_property'] = 'password' #password is saved in json as {password:myPassword}