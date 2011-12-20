class node-files {
  $packages = [
    man-db,
    bc,
    ethtool,
    vim-enhanced,
    git,
    qemu-kvm,
    python-virtinst,
    tidy,
    strace,
    rpm-build,
    rpm-sign,
    autofs,
    openssh-server,
    openssh-clients,
    ruby-rdoc,
    python-docutils,
    python-virtualenv,
    python-setuptools,
    python-lxml,
    rlwrap,
    wireshark,
    mock,
    lrzsz,
    gcc,
    kernel-devel,
    nmap,
    libxml2,
    libxslt,
    python-ldap,
    tcpdump,
    virt-top,
  ]

  $services = [
    network,
    sshd,
  ]

  package { $packages: ensure => installed }
  service { $services:
    ensure => running,
    enable => true,
  }

  file { '/etc/sysconfig/selinux':
          content => "SELINUX=disabled\n",
  }
}

