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


# Install dependencies
package 'htop'
package 'tmux'
package 'imagemagick'

include_recipe 'nodejs'

include_recipe 'opsworks_ruby::setup'
