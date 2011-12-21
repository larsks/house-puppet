class sshd {
  include sshd::packages
  include sshd::config
  include sshd::services
}

