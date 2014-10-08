# Author::    Liam Bennett (mailto:lbennett@opentable.com)
# Copyright:: Copyright (c) 2013 OpenTable Inc
# License::   MIT

# == Class puppetdb_rundeck::install
#
# This private class is meant to be called from `puppetdb_rundeck`
# It downloads and install the puppetdb_rundeck ruby gem
#
class puppetdb_rundeck::install {

  ensure_resource('package','ruby',{'ensure'=>'installed'})
  ensure_resource('package','rubygems',{'ensure'=>'installed'})

  package { 'puppetdb_rundeck':
    ensure   => $puppetdb_rundeck::version,
    provider => gem
  }
}
