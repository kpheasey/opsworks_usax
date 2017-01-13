# frozen_string_literal: true
#
# Cookbook Name:: opsworks_usax
# Recipe:: solr
#

package 'openjdk-7-jdk'
package 'solr-tomcat'

service 'tomcat6' do
  action :restart
end