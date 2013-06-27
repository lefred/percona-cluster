class percona::cluster::xbstream  {
        
        exec {
                "delete_mysql_datadir":
                        path    => ["/usr/bin","/bin"],
                        command => "rm -rf /var/lib/mysql/*",
                        unless 	=> "ls /var/lib/mysql/grastate.dat 2>/dev/null",
			notify 	=> Service['mysql'],
			require => Package['MySQL-server'], 
        }

}
