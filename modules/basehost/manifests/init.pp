class basehost {
  include screen
  include sshd

  include basehost::packages
  include basehost::config
  include basehost::services
}

