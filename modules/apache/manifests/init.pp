class apache {
  package { httpd:
    ensure => installed,
  }

  file { '/etc/httpd/conf.d/userdir.conf':
    source => 'puppet:///modules/apache/userdir.conf',
    notify => Service['httpd'],
    owner  => root,
    group  => root,
    mode   => 0644
  }

  service { httpd:
    require => Package['httpd'],
    ensure  => running,
    enable  => true,
  }
}

