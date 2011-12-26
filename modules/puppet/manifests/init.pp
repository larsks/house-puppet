class puppet {
	include puppet::packages
	include puppet::config
	include puppet::services
}
