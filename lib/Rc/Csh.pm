use strict;
package Rc::Csh;  #sea shell backend
use Carp;
use Rc qw($OutputFH);
use vars qw($level %Local);
$level = 0;

sub HELP { die "Will a 'csh' expert please step forward?" }

sub indent(&) { local $level = $level + 1; shift->() }
sub nl() { "\n" . ' 'x($level*4) }

sub Rc::Node::csh {
    print $OutputFH shift->chp(). "\n";
}

sub Rc::Node::chp {
    my $n=shift;
    die ref($n)." not implemented yet for 'csh'";
}

1;
