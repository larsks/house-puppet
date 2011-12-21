class basehost {
  include screen
  include sshd
  include krb5-workstation

  include basehost::packages
  include basehost::config
  include basehost::services
}

