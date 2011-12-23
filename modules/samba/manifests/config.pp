class samba::config {
	require samba::packages
	include firewall

	file { '/etc/samba/smb.conf':
		source => 'puppet:///modules/samba/smb.conf',
		owner => root,
		group => root,
		mode => 0644,
	}

	firewall::rule { '10samba.rule':
		source => 'puppet:///modules/samba/samba.rule',
	}
}

