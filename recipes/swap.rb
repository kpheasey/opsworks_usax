# frozen_string_literal: true
#
# Cookbook Name:: usax
# Recipe:: swap
#

# Create swap
swap_file '/mnt/swap' do
  size    2048 # MBs
  persist true
end