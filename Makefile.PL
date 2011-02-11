#!/usr/bin/env perl

use inc::Module::Install;

name 'SetFunctions';
all_from 'lib/SetFunctions.pm';

test_requires 'Test::More';

auto_install;
WriteAll;
