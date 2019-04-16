class my_team {
	file {'/tmp/hell1':
		ensure	=> present,
		content	=> "This is hell1",
	}
	class {'my_team::params':}
	class {'my_team::myteam':}
	class {'my_team::test_class':}
	notify{"Installing ntp":}
	class {'my_team::my_ntp':}
	class {'my_team::file_epp':}
#	package {'apache2':
#		ensure	=> purged,
#	}

#	service {'apache2':
#		ensure	=> running,
#		require	=> Package['apache2']
#}
}
