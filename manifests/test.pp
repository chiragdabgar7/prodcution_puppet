$buffer_pool = $facts['memory']['system']['total_bytes']
notice("${buffer_pool}")
notice("Hello")
notice("My IP is ${facts['networking']['ip']}")
