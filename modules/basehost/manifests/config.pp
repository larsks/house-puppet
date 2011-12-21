class basehost::config {
  require basehost::packages

  file { '/etc/sysconfig/selinux':
    content => "SELINUX=disabled\n",
  }
}

