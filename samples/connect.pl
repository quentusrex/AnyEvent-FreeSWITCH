use AnyEvent::FreeSWITCH;

my $fs = AnyEvent::FreeSWITCH->new();

$fs->reg_cb('test', sub {print "Called a test\n";});
$fs->event('test');

$fs->connect();

print "is connected: " . $fs->is_connected() . "\n";
print $fs->api("status");
