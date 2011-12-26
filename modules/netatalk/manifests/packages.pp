class netatalk::packages {
	$packages = [
		netatalk,
	]

	package { $packages: ensure => installed }
}
