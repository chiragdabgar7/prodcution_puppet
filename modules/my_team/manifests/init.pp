class my_team {
	file {'/tmp/test_file.txt.${hostname}':
		ensure	=> present,
		source	=> "puppet:///modules/my_team/test_file.txt",
	}
	file { '/tmp/README.md':  source => 'https://raw.githubusercontent.com/puppetlabs/puppet/master/README.md',}
	class {'my_team::params':}
	class {'my_team::myteam':}
	class {'my_team::test_class':}
	notify{"Installing ntp":}
	class {'my_team::my_ntp':}
	class {'my_team::file_epp':}
	class { 'my_team::graphite_file': }

}
