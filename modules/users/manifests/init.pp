class users {
    user { 'k':
        ensure	=> present,
	comment	=> 'sample user',
	home	=> '/home/k',
	managehome	=> true,
	}


#    ssh_authorized_key { 'k_ssh':
#	user	=> 'k',
#	type	=> 'rsa',
#	key	=> 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC5TO8uvcvYh0WEjw8aHtlDVP6HdnZZr9kMuhVFOmf7gzkD/uEmi/Wt9gLCMvAoSbzggmv03ZzuDU9ApK3/DCqpJ6OVOxb+/q/BDPFJpMqZTc9/gMMESqmLGp9ZSe6q9A5TUadC+nKyyAACYyrISIfmM672fvdy+CyL5My+LMt5bcADD/fpbnp+9R8/Y9G3DP/NWKWezat6wYc81AbwOFhTgIE2CzEK2wiVyNAa/AmQF1+mQk/4Nh6OXBITS5VE5HA49cGhM4DaLcMhHQQLlfAVn3QJkosPv5ktdR/r7yGaJ1KMRm+yXBzUEzIfJldFdxP2VW4a5KVGs7vFn27D4lk5'
#}	
}
