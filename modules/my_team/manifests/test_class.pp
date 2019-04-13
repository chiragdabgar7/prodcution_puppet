class my_team::test_class (
	$file_name	= '/opt/itest',
	$ensure		= present,
	){
	file { $file_name:
		ensure	=> present,
		content	=> "file created in test_class.pp"}
	}
