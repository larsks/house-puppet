class netatalk::config {
	require netatalk::packages

	File {
		owner => root,
		group => root,
		mode => 0644,
	}

	file { '/etc/netatalk/afpd.conf':
		source => 'puppet:///modules/netatalk/afpd.conf',
	}
	file { '/etc/netatalk/AppleVolumes.default':
		source => 'puppet:///modules/netatalk/AppleVolumes.default',
	}
}
