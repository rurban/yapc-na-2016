#!/usr/bin/env perl

use strict;
use warnings;

# This is a bad example of how to add feature bloat. say needs only 5.10 
use v5.022;

say q{# @INC:};
# better written as print "$_\n" for @INC;
map { say $_ } @INC;

say '';
say q{# %INC:};
# better written as print "$_ => $INC{$_}\n" for sort keys %INC;
map { say $_, ' => ', $INC{$_} } sort keys %INC;

1;
