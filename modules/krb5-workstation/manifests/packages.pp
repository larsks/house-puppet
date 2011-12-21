class krb5-workstation::packages {
	$packages = [
	krb5-workstation,
	]

	package { $packages: ensure => installed }
}

