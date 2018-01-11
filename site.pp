# Disable filebucket by default for all File resources:
#File { backup => false }
$test_top_scope = "Top SCOPE"

#node fqdn of the hostname or comma separated

node /^davehartx(1|3).*$/ {
  class {'java':}
}

#node 'davehartx4.mylabserver.com' {
#   include ntp
#}

#include tim_cis::el7all
#all

node default {
   $test_top_scope = "This is NOde part2"
   $node_top_scope = "node part2"
   notify { $test_top_scope:
   message => "this is TOP $test_top_scope"
   } 
include ssh
#include motd
#     notify  { "This is my deafult ":  }
#     user { 'add_user':
#	name 	=> 'dxhart',
#	groups	=> 	'wheel',
#	managehome	=>	true,
#	password	=> 	'$1$zjX9OHcx$wH5BNv/AX9b25x9VRylOo0',
#	ensure		=> 	present
# }
}
