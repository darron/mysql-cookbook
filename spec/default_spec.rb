# encoding: utf-8
require 'spec_helper'

# Write unit tests with ChefSpec - https://github.com/sethvargo/chefspec#readme
describe 'mysql::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'installs a mysql-client package' do
    expect(chef_run).to install_package('mysql-client')
  end

  it 'installs a libmysqlclient-dev package' do
    expect(chef_run).to install_package('libmysqlclient-dev')
  end
end
