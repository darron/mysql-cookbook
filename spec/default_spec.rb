# encoding: utf-8
require 'spec_helper'

# Write unit tests with ChefSpec - https://github.com/sethvargo/chefspec#readme
describe 'mysql::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'installs a percona-server-client package' do
    expect(chef_run).to install_package('percona-server-client')
  end

  it 'installs a libmysqlclient-dev package' do
    expect(chef_run).to install_package('libmysqlclient-dev')
  end

  it 'installs a percona-server-server-5.6 package' do
    expect(chef_run).to install_package('percona-server-server-5.6')
  end
end
