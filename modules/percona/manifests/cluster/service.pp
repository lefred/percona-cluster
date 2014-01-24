class percona::cluster::service ($ensure="running", $bootstrap=False) {
        
   	if ($bootstrap == True)   {
        	$service_start = "service mysql bootstrap-pxc"
        }
	#else {
	#	$service_start = "service mysql start"
	#	include percona::cluster::xbstream
	#}

	service {
		"mysql":
			enable  => true,
                        ensure  => $ensure,
			subscribe => File['/etc/my.cnf'],
			require => Package['MySQL-server'],
                	start => $service_start,
	}
}
