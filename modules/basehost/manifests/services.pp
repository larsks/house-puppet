class basehost::services {
  require basehost::packages
  require basehost::config

  $services = [
    network,
  ]

  service { $services:
    ensure => running,
    enable => true,
  }
}

