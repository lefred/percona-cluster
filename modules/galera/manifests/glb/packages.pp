class galera::glb::packages {

	package {
		"glb":
			provider => rpm,
			ensure   => installed,
			source   => "/vagrant/modules/galera/files/glb-0.7.5-1.x86_64.rpm",
	}
	
}
