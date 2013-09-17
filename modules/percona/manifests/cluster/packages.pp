class percona::cluster::packages {

        package {
                "Percona-XtraDB-Cluster-server.$hardwaremodel":
                        alias => "MySQL-server",
                        require => Yumrepo['percona'],
                        ensure => "installed";
                "rsync":
                        ensure => "present";
		"mysql-libs":
			ensure => "absent";		
		#"Percona-Server-shared-compat":
		#	require => [ Yumrepo['percona'], Package['mysql-libs'], Package['MySQL-client'] ],
		#	ensure => "installed";

        }
}
