node percona1 {
	include percona::repository
	include myhosts
	include qpress

	Class['percona::repository'] -> Class['qpress'] -> Class['percona::cluster'] -> Class['galera::glb']


	class {
		'percona::cluster':
			bootstrap => True
	}
	class {
		'galera::glb':
			glb_list_backend => "192.168.70.2:3306:1 192.168.70.3:3306:1 192.168.70.4:3306"
	}
}

node percona2 {
	include percona::repository
	include percona::cluster
	include myhosts
	include qpress

	Class['percona::repository'] -> Class['qpress'] -> Class['percona::cluster']
}

node percona3 {
	include percona::repository
	include percona::cluster
	include myhosts
	include qpress

	Class['percona::repository'] -> Class['qpress'] -> Class['percona::cluster']
}

