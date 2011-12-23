class firewall::packages {
	$packages = [
	]

	package { $packages: ensure => installed }
}
