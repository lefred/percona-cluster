class percona::cluster ($ensure="running", $bootstrap=False) {
	include percona::cluster::packages
	include percona::cluster::config

	Class['percona::cluster::packages'] -> Class['percona::cluster::config'] ->  Class['percona::cluster::service']	

	class {
                'percona::cluster::service':
                        bootstrap => $bootstrap,
			ensure 	  => $ensure,
        }


	
}
