class sshd::config {
  require sshd::packages
  include firewall

  file { '/etc/ssh/sshd_config':
    source => 'puppet:///modules/sshd/sshd_config',
    owner  => root,
    group  => root,
    mode   => 0644,
    notify => Service['sshd'],
  }

	firewall::rule { '10sshd.rule':
		source => 'puppet:///modules/sshd/sshd.rule',
	}
}

