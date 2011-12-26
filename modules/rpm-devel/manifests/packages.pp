class rpm-devel::packages {
	$packages = [
	    rpm-build,
	    rpm-sign,
	    mock,
	]

	package { $packages: ensure => installed }
}

