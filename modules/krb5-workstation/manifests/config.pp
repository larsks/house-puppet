class krb5-workstation::config {
  file {'/etc/krb5.conf':
    source => 'puppet:///modules/krb5-workstation/krb5.conf',
  }
}

