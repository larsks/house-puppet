class firewall {
	include firewall::packages
	include firewall::config
	include firewall::services

	File {
		owner => root,
		group => root,
		mode => 0644,
	}

	file { '/usr/sbin/concat-iptables':
		source => 'puppet:///modules/firewall/concat-iptables',
		mode => 0755,
	}

	file { '/etc/firewall':
		ensure => directory,
	}

	exec { 'concat-iptables':
		command => '/usr/sbin/concat-iptables -r',
		require => File['/usr/sbin/concat-iptables'],
		refreshonly => true,
	}

	file { '/etc/firewall/filter.d':
		ensure => directory,
		source => 'puppet:///modules/firewall/filter.d/',
		recurse => true,
		notify => Exec['concat-iptables'],
	}

	define rule ($source=undef, $content=undef, $table='filter') {
		file { "/etc/firewall/${table}.d/$name":
			source  => $source,
			content => $content,
			notify  => Exec['concat-iptables'],
		}
	}
}

