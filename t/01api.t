use strict;
use Test;
BEGIN { plan tests => 10 }
use NetworkInfo::Discovery::NetBIOS;

# check that the following functions are available
ok( defined \&NetworkInfo::Discovery::NetBIOS::new      );  #01
ok( defined \&NetworkInfo::Discovery::NetBIOS::do_it    );  #02

# create an object
my $scanner = undef;
eval { $scanner = new NetworkInfo::Discovery::NetBIOS };
ok( $@, ''                                              );  #03
ok( defined $scanner                                    );  #04
ok( $scanner->isa('NetworkInfo::Discovery::NetBIOS')    );  #05
ok( ref $scanner, 'NetworkInfo::Discovery::NetBIOS'     );  #06
 
# check that the following object methods are available
ok( ref $scanner->can('can')                   , 'CODE' );  #07
ok( ref $scanner->can('new')                   , 'CODE' );  #08
ok( ref $scanner->can('do_it')                 , 'CODE' );  #09
ok( ref $scanner->can('hosts')                 , 'CODE' );  #10
