class puppet::packages {
	$packages = [
		puppet,
	]

	package { $packages: ensure => installed }
}
