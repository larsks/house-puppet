class sshd::services {
  require sshd::packages
  require sshd::config

  $services = [
    sshd,
  ]

  service { $services:
    ensure => running,
    enable => true,
  }
}

