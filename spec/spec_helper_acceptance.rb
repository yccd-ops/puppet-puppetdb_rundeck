require 'beaker-rspec/spec_helper'
require 'beaker-rspec/helpers/serverspec'
#require 'capybara/rspec'
#require 'capybara/poltergeist'

hosts.each do |host|
  # Install Puppet
  install_puppet
end

UNSUPPORTED_PLATFORMS = ['Suse','AIX','Solaris','Windows']

RSpec.configure do |c|
  # Project root
  proj_root = File.expand_path(File.join(File.dirname(__FILE__), '..'))

  # Readable test descriptions
  c.formatter = :documentation

  #Capybara.app_host = "http://localhost:4567"
  #Capybara.register_driver :poltergeist do |app|
  #  Capybara::Poltergeist::Driver.new(
  #      app,
  #      window_size: [1280, 1024]
  #  )
  #end
  #Capybara.default_driver    = :poltergeist
  #Capybara.javascript_driver = :poltergeist

  # Configure all nodes in nodeset
  c.before :suite do
    # Install module and dependencies
    puppet_module_install(:source => proj_root, :module_name => 'puppetdb_rundeck')
    hosts.each do |host|
      on host, puppet('module', 'install', 'puppetlabs-stdlib'), { :acceptable_exit_codes => [0,1] }
    end
  end
end
