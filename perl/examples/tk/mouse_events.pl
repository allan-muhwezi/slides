use strict;
use warnings;
use 5.010;

use Tk;

my $top = MainWindow->new;

$top->bind('<ButtonPress-1>', \&mouse);
$top->bind('<ButtonPress-2>', \&mouse);
$top->bind('<ButtonPress-3>', \&mouse);

$top->bind('<ButtonRelease-1>', \&mouse);
$top->bind('<ButtonRelease-2>', \&mouse);
$top->bind('<ButtonRelease-3>', \&mouse);

MainLoop;

sub mouse {
    my ($window) = @_;
    my $event = $window->XEvent;
    say $event->b;
    say $event->s;
    say $event->x;
    say $event->y;
    say '-----';
}
