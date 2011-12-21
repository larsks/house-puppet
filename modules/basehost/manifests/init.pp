class basehost {
  include screen

  include basehost::packages
  include basehost::config
  include basehost::services
}

