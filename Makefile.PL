use inc::Module::Install;

name     'FizzBuzz';
all_from 'lib/FizzBuzz.pm';
author   q{Ronnachate Gatekieo <yo@abctech-thailand.com>};
license  'perl';

build_requires 'Test::More';

requires 'Moose';

install_script glob('script/*.pl');
auto_install;
WriteAll;