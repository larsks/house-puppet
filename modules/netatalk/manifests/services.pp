class netatalk::services {
	require netatalk::packages
	require netatalk::config

	$services = [
		netatalk,
	]

	service { $services:
		ensure => running,
		enable => true,
	}
}
