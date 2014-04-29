# == Class puppetdb_rundeck::service
#
# This class is meant to be called from puppetdb_rundeck
# It ensure the service is running
#
class puppetdb_rundeck::service {

  case downcase($osfamily) {
    'debian': {
      $content = template("puppetdb_rundeck/debian_service.erb")
    }
    'redhat': {
      $content = template("puppetdb_rundeck/redhat_service.erb")
    }
  }

  file { "/etc/init.d/${puppetdb_rundeck::service_name}":
    ensure => present,
    content => $content,
    owner  => root,
    group  => root,
    mode   => '0755',
    notify => Service[$puppetdb_rundeck::service_name]
  }

  service { $puppetdb_rundeck::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require    => File["/etc/init.d/${puppetdb_rundeck::service_name}"]
  }
}
