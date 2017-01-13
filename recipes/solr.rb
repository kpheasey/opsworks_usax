
# Cookbook Name:: opsworks_usax
# Recipe:: solr
#

if node['solr']['install_java']
  include_recipe 'apt'
  include_recipe 'java'
end

extract_path = "#{node['solr']['dir']}-#{node['solr']['version']}"
solr_path = "#{extract_path}/#{node['solr']['version'].split('.')[0].to_i < 5 ? 'example' : 'server'}"

user node['solr']['user'] do
  comment 'User that owns the solr data dir.'
  home node['solr']['data_dir']
  system true
  shell '/bin/false'
  only_if { node['solr']['user'] != 'root' }
end

group node['solr']['group'] do
  members node['solr']['user']
  append true
  system true
  only_if { node['solr']['group'] != 'root' }
end

ark 'solr' do
  url node['solr']['url']
  version node['solr']['version']
  checksum node['solr']['checksum']
  path node['solr']['dir']
  prefix_root '/opt'
  prefix_home '/opt'
  owner node['solr']['user']
  action :install
end

directory node['solr']['data_dir'] do
  owner node['solr']['user']
  group node['solr']['group']
  recursive true
  action :create
end