use strict;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'NetworkInfo::Discovery::NetBIOS',
    AUTHOR              => 'Sébastien Aperghis-Tramoni <sebastien@aperghis.net>',
    VERSION_FROM        => 'lib/NetworkInfo/Discovery/NetBIOS.pm',
    ABSTRACT_FROM       => 'lib/NetworkInfo/Discovery/NetBIOS.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'NetworkInfo::Discovery' => 0.12, 
        'Net::NBName' => 0.25, 
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'NetworkInfo-Discovery-NetBIOS-*' },
);
