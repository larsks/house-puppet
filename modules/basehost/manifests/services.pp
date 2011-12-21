class basehost::services {
  require basehost::packages
  require basehost::config

  $services = [
    puppet,
    sshd,
    network,
  ]

  service { $services:
    ensure => running,
    enable => true,
  }
}

