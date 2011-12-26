class basehost::config {
  require basehost::packages

  file { '/etc/sysconfig/selinux':
    content => "SELINUX=disabled\n",
  }

  ssh_authorized_key { "root@files":
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCxToJo0r1bZT9A+9JJcf8d99nKzjheK9wkkhQxnui7rB3pl4UzZyQJmRq2gZl1MJ/Sg8sK9FLwRBCRU3/Lh96GFsLOHUCwdhWu4Ilrz9J7QrelFJM1nBf9oi6fMMjSjSVSk3otTA/iRuAW7YIZzHnifcImmoLPDs8y2ZKolFUd84DzF6plX4XClZP0J1BVWyFTURzY5uMnxNA8U+UWE7wDATuL0ZmA1P+F+R0CvbqgPstAmlrn9pfzn7VPc0DIQRF28Qs3JVn3Pv9P6mr45szDcr3ADJ2OIiGM7+mJlxaph9vDYMVW2UFqVC/mGnuvh3M5ILCBCdv1ngzGI7RrDB7X',
  }

}

