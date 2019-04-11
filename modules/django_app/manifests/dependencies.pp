class django_app::dependencies {
	
#	exec {'apt_update':
#		command	=> '/usr/bin/apt-get update',
#	}
	exec {'proj_install':
		command	=> '/usr/bin/pip install Mezzanine==4.2.3'
	}
#	package {'nginx':
#		ensure	=> present,
#	}
	lookup('dependencies', Array).each | String $dep| {
		package { $dep:
			ensure	=> installed,
		}
	}
}
