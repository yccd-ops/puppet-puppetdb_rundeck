# == Class puppetdb_rundeck::install
#
class puppetdb_rundeck::install {

  ensure_resource('package','ruby',{'ensure'=>'installed'})
  ensure_resource('package','rubygems',{'ensure'=>'installed'})

  package { 'puppetdb_rundeck':
    ensure   => $puppetdb_rundeck::version,
    provider => gem
  }
}
