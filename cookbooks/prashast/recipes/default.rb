#
# Cookbook Name:: prashast
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'prashast::user_group'
include_recipe 'prashast::home'
include_recipe 'prashast::java'
include_recipe 'prashast::twowayssl_truststore'