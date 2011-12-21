class basehost::services {
  require basehost::packages
  require basehost::config

  $services = [
    puppet,
    network,
  ]

  service { $services:
    ensure => running,
    enable => true,
  }
}

