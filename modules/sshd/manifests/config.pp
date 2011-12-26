class sshd::config {
  require sshd::packages

  file { '/etc/ssh/sshd_config':
    source => 'puppet:///modules/sshd/sshd_config',
    owner  => root,
    group  => root,
    mode   => 0644,
    notify => Service['sshd'],
  }

}

