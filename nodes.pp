node default {
  include basehost
}

node 'files' {
  include libvirt
  include apache
  include samba

  include node-files
}

