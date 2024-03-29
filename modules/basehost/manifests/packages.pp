class basehost::packages {
  $packages = [
    man-db,
    bc,
    ethtool,
    vim-enhanced,
    nc,
    socat,
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
    gpgcheck => 0,
  }

  package { $packages:
    ensure  => installed,
    require => Yumrepo['house'],
  }
}

