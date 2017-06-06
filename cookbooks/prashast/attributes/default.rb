default['prashast']['host'] = node['hostname']
default['prashast']['servername'] = 'prashast.local.com'

default['apps_dir'] = '/apps'

include_attribute 'prashast::user_group'
include_attribute 'prashast::home'
include_attribute 'prashast::java'
#include_attribute 'prashast::maven'
include_attribute 'prashast::twowayssl_truststore'
#include_attribute 'prashast::twowayssl_keystore'
