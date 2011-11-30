use inc::Module::Install;

name     'FizzBuzz';
all_from 'lib/FizzBuzz.pm';
author   q{Ronnachate Gatekieo <yo@abctech-thailand.com>};
license  'perl';

build_requires 'Test::More';

requires 'Moose';

WriteAll;