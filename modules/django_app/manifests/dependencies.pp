class django_app::dependencies {
	
	exec {'proj_install':
		command	=> '/usr/bin/pip install Mezzanine==4.2.3'
	}
	lookup('dependencies', Array).each | String $dep| {
		package { $dep:
			ensure	=> installed,
		}
	}
	lookup('purged_packages', Array).each | String $pur | {
		package { $pur:
			ensure	=> purged,
		}
	}
}
