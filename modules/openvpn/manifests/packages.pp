class openvpn::packages {
	$packages = [
		openvpn,
	]

	package { $packages: ensure => installed }
}
