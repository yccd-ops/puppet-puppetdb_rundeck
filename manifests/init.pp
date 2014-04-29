# == Class: puppetdb_rundeck
#
# Full description of class puppetdb_rundeck here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class puppetdb_rundeck (
  $service_name  = $puppetdb_rundeck::params::service_name,
  $version       = $puppetdb_rundeck::params::version,
  $puppetdb_host = $puppetdb_rundeck::params::puppetdb_host,
  $puppetdb_port = $puppetdb_rundeck::params::puppetdb_post,
  $port          = $puppetdb_rundeck::params::port
) inherits puppetdb_rundeck::params {

  # validate parameters here

  class { 'puppetdb_rundeck::install': } ->
  class { 'puppetdb_rundeck::service': } ->
  Class['puppetdb_rundeck']
}
