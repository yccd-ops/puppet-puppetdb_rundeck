source "http://rubygems.org"

group :test do
  gem "rake"
  gem "puppet", ENV['PUPPET_VERSION'] || '~> 3.4.0'
  gem "puppet-lint"
  gem "rspec-puppet", :git => 'https://github.com/rodjek/rspec-puppet.git'
  gem "puppet-syntax"
  gem "puppetlabs_spec_helper"
  gem "poltergeist"
	gem "rspec", "2.99.0"
  if (RUBY_VERSION = '1.8.7')
    gem "celluloid", "0.11.1"
    gem "capybara", "1.1.4"
    gem "rubyzip", "0.9.9"
  else
    gem "capybara"
  end
end

group :development do
  gem "travis"
  gem "travis-lint"
  gem "beaker"
  gem "beaker-rspec"
  gem "vagrant-wrapper"
  gem "puppet-blacksmith"
  gem "guard-rake"
end
