class my_team::graphite_file {
	lookup('graphite_files', Array).each | String $fil | {
		file { "/opt/$fil":
			ensure	=> present,
			source	=> "puppet:///modules/my_team/$fil",
			mode	=> '0755',
			}
	}}
