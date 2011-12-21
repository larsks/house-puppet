class basehost::packages {
  $packages = [
    man-db,
    bc,
    ethtool,
    vim-enhanced,
    git,
    strace,
    autofs,
    openssh-server,
    openssh-clients,
    wireshark,
    lrzsz,
    gcc,
    kernel-devel,
    tcpdump,
    bind-utils,
  ]

  yumrepo { house:
    baseurl  => 'http://files.house/repo/fedora/$releasever/$basearch',
    name     => 'House package repository',
    enabled  => 1,
    gpgcheck => 1,
  }

  package { $packages:
    ensure  => installed,
    require => Yumrepo['house'],
  }
}

