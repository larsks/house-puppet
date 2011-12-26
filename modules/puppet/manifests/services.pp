class puppet::services {
	require puppet::packages
	require puppet::config

	$services = [
		puppet,
	]

	service { $services:
		ensure => running,
		enable => true,
	}
}
