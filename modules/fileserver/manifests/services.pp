class fileserver::services {
	require fileserver::packages
	require fileserver::config

	$services = [
	]

	service { $services:
		ensure => running,
		enable => true,
	}
}
