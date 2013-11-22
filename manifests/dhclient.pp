class dhcp::dhclient (
	$search_domain = '',
){
	file { "dhclient.conf":
		ensure  => 'file',
	    path    => "/etc/dhcp/dhclient.conf",
	    owner   => root,
	    group   => root,
	    mode    => 644,
	    content => template("dhcp/dhclient.conf.erb"),
	  }
}