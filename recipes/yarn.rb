# frozen_string_literal: true
#
# Cookbook Name:: usax
# Recipe:: yarn
#

apt_repository 'yarn' do
  uri          'https://dl.yarnpkg.com/debian/'
  arch         'amd64'
  distribution 'jessie'
  components   ['main']
  key          'https://dl.yarnpkg.com/debian/pubkey.gpg'
end

package 'yarn'