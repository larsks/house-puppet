class kvmserver::packages {
	$packages = [
		qemu-kvm,
		virt-top,
	]

	package { $packages: ensure => installed }
}
