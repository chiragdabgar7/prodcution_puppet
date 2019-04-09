define my_team::test(
	$file_name	= '/tmp/test_file',
	$content	= 'test content',
	){
		file { $file_name:
			ensure	=> present,
			content	=> "THis is the content file",
		}
}

#class my_team::test {
#	file {'/tmp/hell2':
#		ensure	=> present,
#		content	=> "This is hell2"
#	}
#	}
