class krb5-server::packages {
	$packages = [
		krb5-server,
	]

	package { : ensure => installed }
}
