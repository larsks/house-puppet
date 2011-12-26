node default {
  include basehost
}

node 'files.house' inherits default {
  include apache
  include rpm-devel
  include krb5-server
  include fileserver
  include kvmserver

  $packages = [
    python-virtinst,
    ruby-rdoc,
    python-docutils,
    python-virtualenv,
    python-setuptools,
    python-lxml,
    rlwrap,
    nmap,
    libxml2,
    libxslt,
    python-ldap,
  ]

  package { $packages: ensure => installed }
}

