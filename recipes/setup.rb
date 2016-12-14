# frozen_string_literal: true
#
# Cookbook Name:: opsworks_usax
# Recipe:: setup
#

prepare_recipe

package 'nodejs'
package 'htop'
package 'tmux'
package 'imagemagick'
