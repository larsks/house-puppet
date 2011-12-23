class openvpn::services {
	require openvpn::packages
	require openvpn::config

	$services = [
		'openvpn@house.service',
	]

	service { $services:
		provider => systemd,
		ensure => running,
	}
}
