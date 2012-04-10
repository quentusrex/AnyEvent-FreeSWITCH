use AnyEvent::FreeSWITCH;

my $j = AnyEvent->condvar;

my $fs = AnyEvent::FreeSWITCH->new();

$fs->reg_cb(
    'connected'=>  sub {
	print "Connected\n";
	print $fs->api("status");
    },    
    'recv_event' => sub { 
	my ($self, $type, $event) = @_;
	print "type: $type \n";
	print "event: $event \n";
    });

$fs->connect();

$j->wait;
