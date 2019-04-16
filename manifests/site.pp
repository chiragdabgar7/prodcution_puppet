node default {
	notify{"I am hollow. I got nothing in me":}
}

node 'n1' {
	class { 'users': }
	class { 'my_team': }
	#class { 'my_team::test':}
	$my_var = "John"
	file {'/tmp/hello.txt':
		ensure	=> absent,
		content	=> "Hello World...\n",
	}

	lookup('users', Hash, 'hash').each | String $username, Hash $attrs | {
		user { $username:
			*	=> $attrs,
	}
	}
	notify {'Normal Mesage':
		message => "Hello, ${my_var}! Its great to meet you"
		}
	#defining my custom resources

	my_team::test {"/tmp/filetest.txt":}
	#defining apache and its resources

	include apache

	apache::vhost { 'cat.pictures.com':
		port	=> '81',
		docroot	=> '/var/www/cat-pictures',
		docroot_owner	=> 'www-data',
		docroot_group	=> 'www-data',
	}
	
	file { '/var/www/cat-pictures/index.html':
		content	=> "<img 
    src='http://bitfieldconsulting.com/files/happycat.jpg'>",
		owner	=> 'www-data',
		group	=> 'www-data',
	}
	
	#install mysql client on puppet agent
	notify {"THis is ${fqdn}":}
	include mysql::server

}

node 'kube' {
	file { "/tmp/file1_${hostname}":
		ensure	=> present,
		content	=> "This is file1 10.04.2019\nthis is a new line"
	}
	class { 'my_team':}
	my_team::test {"/tmp/filetest.txt":
			file_name	=> "/tmp/filetest.txt",
			content		=> "ABC XYZ EFG",}
	notify{"i am ${hostname}":}
	$role=$facts['role']
	if $role == 'web'{
		notify{"THis is a web server":}
	}else{
		notify{"This is not a web server":}
	}
	notify{"${role}":}

#Django app begins
	include django_app
	include my_team


}
