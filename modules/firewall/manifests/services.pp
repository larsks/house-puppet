class firewall::services {
	require firewall::packages
	require firewall::config

	$services = [
	]

	service { $services:
		ensure => running,
		enable => true,
	}
}
