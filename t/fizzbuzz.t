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
done_testing();
