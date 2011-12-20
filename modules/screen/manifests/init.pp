class screen {
	package { 'screen': ensure => installed }

	file { '/etc/screenrc':
		source => 'puppet:///modules/screen/screenrc',
		owner => root,
		group => root,
		mode => 0644,
	}
}

