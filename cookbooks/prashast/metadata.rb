name             'prashast'
maintainer       'Prashast'
maintainer_email 'prashastsaxena1301@gmail.com'
license          'All rights reserved'
description      'Installs/Configures prashast cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'

#community cookbooks declared with Berkshelf
depends 'java'
depends 'chef-client'
depends 'chef-vault-util'

#local repo cookbooks
#depends 'cookbook_name', '=version'