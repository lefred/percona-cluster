class percona::server::packages {

        if $percona::server::mysql_version == "5.5" {
                $ps_ver="55"
        } elsif $percona::server::mysql_version == "5.6" {
                info("Congrats ! Using 5.6 !!")
                $ps_ver="56"
        }


	package {
		"Percona-Server-server-$ps_ver.$hardwaremodel":
            		alias => "MySQL-server",
            		require => Yumrepo['percona'],
			ensure => "installed";
		"Percona-Server-client-$ps_ver.$hardwaremodel":
            		alias => "MySQL-client",
            		require => Yumrepo['percona'],
			ensure => "installed";		
		"mysql-libs":
			ensure => "absent";		
		"Percona-Server-shared-compat":
			require => [ Yumrepo['percona'], Package['mysql-libs'], Package['MySQL-client'] ],
			ensure => "installed";
	}
}
