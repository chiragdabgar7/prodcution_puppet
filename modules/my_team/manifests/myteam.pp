file { '/tmp/hello.txt':
	ensure 		=> file,
	content		=> "Hello World, Wassup\n",
}
