class sshd::packages {

  $packages = [
    openssh-server,
  ]

  package { $packages:
    ensure  => installed,
  }

}

