#
# Cookbook Name:: prashast
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "java"
include_recipe "prashast::#{node['java']['install_flavor']}"