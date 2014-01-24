class percona::cluster::packages {

        if $percona::cluster::mysql_version == "5.5" {
                $ps_ver="55"
        } elsif $percona::cluster::mysql_version == "5.6" {
                info("Congrats ! Using 5.6 !!")
                $ps_ver="56"
        }


        package {
                "Percona-XtraDB-Cluster-server-$ps_ver.$hardwaremodel":
                        alias => "MySQL-server",
                        require => Yumrepo['percona'],
                        ensure => "installed";
                "qpress":
                         require => Yumrepo['percona'],
                         ensure => "present";
                "rsync":
                        ensure => "present";
		"mysql-libs":
			ensure => "absent";		
        }
}
