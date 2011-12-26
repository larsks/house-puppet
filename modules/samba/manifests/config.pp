class samba::config {
	require samba::packages

	file { '/etc/samba/smb.conf':
		source => 'puppet:///modules/samba/smb.conf',
		owner => root,
		group => root,
		mode => 0644,
	}
}

