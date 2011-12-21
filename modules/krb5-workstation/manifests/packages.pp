class krb5-workstation::packages {
	$packages = [
		krb5-workstation,
		pam_krb5,
	]

	package { $packages: ensure => installed }
}

