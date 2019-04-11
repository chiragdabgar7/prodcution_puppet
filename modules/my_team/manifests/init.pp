class my_team {
	file {'/tmp/hell1':
		ensure	=> present,
		content	=> "This is hell1",
	}
	class {'my_team::params':}
	class {'my_team::myteam':}
#	package {'apache2':
#		ensure	=> purged,
#	}

#	service {'apache2':
#		ensure	=> running,
#		require	=> Package['apache2']
#}
}
