use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'AnyEvent::FreeSWITCH',
    AUTHOR              => q{William King <william.king@quentustech.com>},
    VERSION_FROM        => 'lib/AnyEvent/FreeSWITCH.pm',
    ABSTRACT_FROM       => 'lib/AnyEvent/FreeSWITCH.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'bsd')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'AnyEvent-FreeSWITCH-*' },
);
