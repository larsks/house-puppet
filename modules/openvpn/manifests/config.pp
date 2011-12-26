class openvpn::config {
	require openvpn::packages

	File {
		owner => root,
		group => root,
		mode => 0644,
	}

	file { '/etc/systemd/system/multi-user.target.wants/openvpn@house.service':
		ensure => link,
		target => '/lib/systemd/system/openvpn@.service',
	}

	file { '/etc/openvpn/house.conf':
		source => 'puppet:///modules/openvpn/house.conf',
		notify => Service['openvpn@house.service'],
	}

	file { '/etc/openvpn/ca.crt':
		source => 'puppet:///modules/openvpn/ca.crt',
		notify => Service['openvpn@house.service'],
	}

	exec { '/usr/bin/openssl dhparam -out /etc/openvpn/dh1024.pem 1024':
		creates => '/etc/openvpn/dh1024.pem',
		notify => Service['openvpn@house.service'],
	}

	file { '/var/lib/openvpn':
		ensure => directory,
	}

	file { '/var/log/openvpn':
		ensure => directory,
	}
}

