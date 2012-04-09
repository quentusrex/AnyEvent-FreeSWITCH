#!perl -T

use Test::More tests => 3;
use AnyEvent::FreeSWITCH;

my $fs = AnyEvent::FreeSWITCH->new();

is($fs->{host}, '127.0.0.1', "Default hostname");
is($fs->{port}, '8021', "Default port");
is($fs->{password}, 'ClueCon', "Default password");
