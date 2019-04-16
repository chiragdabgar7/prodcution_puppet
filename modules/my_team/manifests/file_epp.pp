class my_team::file_epp {
	file { '/usr/local/bin/backup':
	content	=> epp('/etc/puppetlabs/code/environments/production/modules/my_team/templates/backup.sh.epp',
	{
	'data_dir'	=> '/etc/puppetlabs/code/environments/production/modules/my_team/templates',
	}
	),
	mode	=> '0755',
	}

		
}
