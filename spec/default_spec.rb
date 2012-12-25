require 'chefspec'

describe 'ernie::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'ernie::default' }

  it 'should install the ernie gem' do
    chef_run.should install_gem_package "ernie"
  end

  it 'should install erlang' do
    chef_run.should install_package 'erlang'
  end
end
