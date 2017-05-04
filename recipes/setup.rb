# frozen_string_literal: true
#
# Cookbook Name:: usax
# Recipe:: setup
#

prepare_recipe

# Create swap
swap_file '/mnt/swap' do
  size    2048 # MBs
  persist true
end

# package repositories
apt_repository 'yarn' do
  uri        'https://dl.yarnpkg.com/debian/pubkey.gpg'
  components ['main', 'stable']
end

# packages
include_recipe 'nodejs'
package 'htop'
package 'tmux'
package 'imagemagick'
package 'yarn'

include_recipe 'opsworks_ruby::setup'
