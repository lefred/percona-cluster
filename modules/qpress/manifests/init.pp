class qpress {

	exec {
                "get-qpress":
                        path    => ["/usr/bin","/bin"],
                        command => "wget http://www.quicklz.com/qpress-11-linux-x64.tar -O - | tar xvf -",
			cwd	=> "/usr/bin",
                        unless => "ls /usr/bin/qpress",
        }

}
