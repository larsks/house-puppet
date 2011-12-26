class fileserver {
	include fileserver::packages
	include fileserver::config
	include fileserver::services

	include samba
	include netatalk
}
