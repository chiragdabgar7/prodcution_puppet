class django_app {
	notify {"welcome to Django app module":}
	include supervisor
	class {'django_app::dependencies':}
	

	#required directory cnd user reation
	file {'/srv/mezzanine':
		ensure	=> 'directory',
	}
	
	user { 'mezzanine':
		ensure	=> present,
	}
	
	
}
