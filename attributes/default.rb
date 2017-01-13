default['defaults']['whenever']['roles'] = ['default']

default['java']['jdk_version'] = '8'
default['solr']['version']  = '6.3.0'
default['solr']['url']      = "https://archive.apache.org/dist/lucene/solr/#{node['solr']['version']}/#{node['solr']['version'].split('.')[0].to_i < 4 ? 'apache-' : ''}solr-#{node['solr']['version']}.tgz"
default['solr']['checksum'] = '07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544'
default['solr']['data_dir'] = '/etc/solr'
default['solr']['dir']      = '/opt/solr'
default['solr']['port']     = '8983'
default['solr']['pid_file'] = '/var/run/solr.pid'
default['solr']['log_file'] = '/var/log/solr.log'
default['solr']['user']     = 'root'
default['solr']['group']    = 'root'
default['solr']['install_java'] = true
default['solr']['java_options'] = '-Xms128M -Xmx512M'