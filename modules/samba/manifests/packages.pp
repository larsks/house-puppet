class samba::packages {
	$packages = [
	samba,
	samba-client
	]

	package { $packages: ensure => installed }
}

