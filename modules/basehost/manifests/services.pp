class basehost::services {
  require basehost::packages
  require basehost::config

  service { sshd:
    ensure => running,
    enable => true,
  }
}

