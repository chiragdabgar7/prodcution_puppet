class myteam::file_creation {
	file { "/tmp/test_file.txt":
		ensure	=> present,
		source	=> 'puppet:///modules/my_team/test_file.txt',
	}
	}
