class rpm-devel::services {
	require rpm-devel::packages
	require rpm-devel::config

	$services = [
	]

	service { $services:
		ensure => running,
		enable => true,
	}
}
