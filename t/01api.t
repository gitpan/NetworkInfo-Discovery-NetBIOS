use strict;
use Test;
BEGIN { plan tests => 9 }
use NetworkInfo::Discovery::NetBIOS;

# check that the following functions are available
ok( defined \&NetworkInfo::Discovery::NetBIOS::new      );  #01
ok( defined \&NetworkInfo::Discovery::NetBIOS::do_it    );  #02

# create an object
my $scanner = new NetworkInfo::Discovery::NetBIOS;
ok( defined $scanner                                    );  #03
ok( $scanner->isa('NetworkInfo::Discovery::NetBIOS')    );  #04
ok( ref $scanner, 'NetworkInfo::Discovery::NetBIOS'     );  #05
 
# check that the following object methods are available
ok( ref $scanner->can('can')                   , 'CODE' );  #06
ok( ref $scanner->can('new')                   , 'CODE' );  #07
ok( ref $scanner->can('do_it')                 , 'CODE' );  #08
ok( ref $scanner->can('hosts')                 , 'CODE' );  #09
