use strict;
use warnings;
use Test::More;
use FizzBuzz;

subtest 'Fizz' => sub {
    my $fb = FizzBuzz->new (
        fizz => 3,
        buzz => 5,
    );
    like($fb->get(3), qr{Fizz}, "Fizz");
};

subtest 'Buzz' => sub {
    my $fb = FizzBuzz->new (
        fizz => 3,
        buzz => 5,
    );
    like($fb->get(5), qr{Buzz}, "Buzz");
};

subtest 'FizzBuzz' => sub {
    my $fb = FizzBuzz->new (
        fizz => 3,
        buzz => 5,
    );
    like($fb->get(15), qr{FizzBuzz}, "FizzBuzz");
};

subtest 'None' => sub {
    my $fb = FizzBuzz->new (
        fizz => 3,
        buzz => 5,
    );
    like($fb->get(7), qr{7}, "None");

};


subtest 'Command-line interface' => sub {
  subtest 'Without arguments' => sub {
    my @lines = `$^X ./script/fizzbuzz.pl`;

    is (scalar @lines, 101, 'Returns 101 lines, from 0 to 100');
    is (scalar $lines[1], "1\n", 'Line 1 is 1');
    is (scalar $lines[3], "Fizz\n", 'Line 3 is Fizz');
    is (scalar $lines[4], "4\n", 'Line 4 is 4');
  };

  subtest 'Fizz argument' => sub {
    my @lines = `$^X ./script/fizzbuzz.pl --fizz 4`;

    is (scalar @lines, 101, 'Returns 101 lines, from 0 to 100');
    is (scalar $lines[1], "1\n", 'Line 1 is 1');
    is (scalar $lines[3], "3\n", 'Line 3 is 3');
    is (scalar $lines[4], "Fizz\n", 'Line 4 is Fizz');

  };
};


done_testing();
