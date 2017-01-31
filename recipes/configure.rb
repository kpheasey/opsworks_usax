# frozen_string_literal: true
#
# Cookbook Name:: usax
# Recipe:: configure
#

include_recipe 'opsworks_ruby::configure'

logrotate_app 'usax' do
  path      '/srv/www/usax/shared/log/*.log'
  frequency 'daily'
  rotate    3
end

include_recipe 'logrotate::global'
include_recipe 'cloudwatch-logs::default'

