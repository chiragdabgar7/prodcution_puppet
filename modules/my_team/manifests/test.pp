define my_team::test(
	$file_name	= '/tmp/file111',
	$content	= 'this is sample content 11.04.2019',
	$perms		= false,
	){
		if $perms {
		file { $file_name:
			ensure	=> present,
			content	=> "THis is the content file",
		}

		file { "/tmp/test_file.txt":
			ensure	=> present,
			source	=> 'puppet:///modules/myteam/test_file.txt',
		}
	}
	else {
	file { $file_name:
		ensure	=> present,
		#content	=> "This is file without permissions",
	}}
}

#class my_team::test {
#	file {'/tmp/hell2':
#		ensure	=> present,
#		content	=> "This is hell2"
#	}
#	}
