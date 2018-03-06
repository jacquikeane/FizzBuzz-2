#!/usr/bin/perl

use strict;
use warnings;
use FizzBuzz;
use Getopt::Long qw(GetOptions);

my ($fizz, $buzz) = (3, 5);

GetOptions (
  "fizz=i" => \$fizz,
  "buzz=i" => \$buzz,
);

my $fb = FizzBuzz->new (
    fizz => $fizz,
    buzz => $buzz,
);

for(0..100) {
    print $fb->get($_);
    print "\n";
}

1;