class basehost {
  include basehost::packages
  include basehost::config
  include basehost::services
}

