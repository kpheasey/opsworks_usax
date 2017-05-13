# frozen_string_literal: true
#
# Cookbook Name:: usax
# Recipe:: setup
#

prepare_recipe

include_recipe 'usax::swap'

# packages
include_recipe 'nodejs'
package 'htop'
package 'tmux'
package 'imagemagick'

include_recipe 'opsworks_ruby::setup'
