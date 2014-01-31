class percona::server ($mysql_version="5.5", $ensure="running") {
        include percona::server::packages
	include percona::server::service

        Class['percona::server::packages'] -> Class['percona::server::config'] ->  Class['percona::server::service']

}
