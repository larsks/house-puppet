class node-files {
  $packages = [
    qemu-kvm,
    python-virtinst,
    rpm-build,
    rpm-sign,
    ruby-rdoc,
    python-docutils,
    python-virtualenv,
    python-setuptools,
    python-lxml,
    rlwrap,
    mock,
    nmap,
    libxml2,
    libxslt,
    python-ldap,
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

