require 'spec_helper_acceptance'

describe 'puppetdb_rundeck class', :unless => UNSUPPORTED_PLATFORMS.include?(fact('osfamily')) do

  context 'default parameters' do
    # Using puppet_apply as a helper
    it 'should work with no errors' do
      pp = <<-EOS
      class { 'puppetdb_rundeck': }
      EOS

      # Run it twice and test for idempotency
      expect(apply_manifest(pp).exit_code).to_not eq(1)
      expect(apply_manifest(pp).exit_code).to eq(0)
    end

    describe package('ruby') do
      it { should be_installed }
    end

    describe file('/usr/bin/puppetdb_rundeck'), :if => fact('osfamily').eql?('RedHat') do
      it { should be_file }
    end

    describe file('/usr/local/bin/puppetdb_rundeck'), :if => fact('osfamily').eql?('Debian') do
      it { should be_file }
    end

    describe service('puppetdb_rundeck') do
      it { should be_enabled }
      it { should be_running }
    end

    #describe 'api page should be available', :type => :feature do
    #  it 'can access the page' do
    #    visit('/api')
    #    assert(page.has_content?('Two API endpoints are provided'),"The page contains #{page.body}")
    #  end
    #end
  end
end
