class kvmserver {
	include kvmserver::packages
	include kvmserver::config
	include kvmserver::services

	include libvirt
}
