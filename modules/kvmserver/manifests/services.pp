class kvmserver::services {
	require kvmserver::packages
	require kvmserver::config

	$services = [
	]

	service { $services:
		ensure => running,
		enable => true,
	}
}
