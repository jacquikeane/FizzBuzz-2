#!/usr/bin/perl

use strict;
use warnings;
use FizzBuzz;

my $fb = FizzBuzz->new (
    fizz => 3,
    buzz => 5,
);

for(0..100) {
    print $fb->get($_);
    print "\n";
}

1;