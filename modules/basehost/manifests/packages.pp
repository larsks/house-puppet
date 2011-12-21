class basehost::packages {
  $packages = [
    puppet,
    man-db,
    bc,
    ethtool,
    vim-enhanced,
    git,
    strace,
    autofs,
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
    descr    => 'House package repository',
    enabled  => 1,
    gpgcheck => 1,
  }

  package { $packages:
    ensure  => installed,
    require => Yumrepo['house'],
  }
}

