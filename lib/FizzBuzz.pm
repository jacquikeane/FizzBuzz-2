package FizzBuzz;

use strict;
use warnings;

use Moose;

our $VERSION = '0.1';

has 'fizz' => (
    is       => 'ro',
    isa      => 'Num',
    required => 1,
);

has 'buzz' => (
    is       => 'ro',
    isa      => 'Num',
    required => 1,
);

sub get {
    my ($self, $number) = @_;
    my $fizzbuzz = q{};

    if( $number % $self->fizz == 0 ) {
        $fizzbuzz .= 'Fizz';
    }
    if( $number % $self->buzz == 0 ) {
        $fizzbuzz .= 'Buzz';
    }
    if( $fizzbuzz eq q{}) {
        return $number;
    }
    else
    {
        return $fizzbuzz;
    }
}

no Moose;
__PACKAGE__->meta->make_immutable;

1;