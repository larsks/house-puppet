class samba::services {
	require samba::packages
	require samba::config

	$services = [ nmb, smb ]

	service { $services:
		ensure => running,
		enable => true,
		subscribe => File['/etc/samba/smb.conf'],
	}

}

