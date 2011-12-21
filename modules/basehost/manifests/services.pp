class basehost::services {
  require basehost::packages
  require basehost::config

  $services = [
    sshd,
    network,
  ]

  service { $services:
    ensure => running,
    enable => true,
  }
}

