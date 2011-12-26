class krb5-server::services {
	require krb5-server::packages
	require krb5-server::config

	$services = [
		kadmin,
		krb5kdc,
	]

	service {$services:
		enable => true,
		ensure => running,
	}
}
