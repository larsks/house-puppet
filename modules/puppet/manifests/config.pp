class puppet::config {
	require puppet::packages

	file { '/etc/puppet/puppet.conf':
		source => 'puppet:///modules/puppet/puppet.conf',
		owner => root,
		group => root,
		mode => 0644,
	}
}
