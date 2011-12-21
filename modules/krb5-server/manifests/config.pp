class krb5-server::config {
	require krb5-server::packages

	file { '/var/kerberos/krb5kdc/kadm5.acl':
		source => 'puppet:///modules/krb5-server/kadm5.acl',
		owner => root,
		group => root,
		mode => 0600,
	}
}

