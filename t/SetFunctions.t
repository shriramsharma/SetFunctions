use strict;

use lib '.';

use SetFunctions;
use Test::More qw(no_plan);

# Preconditions for set_union:
# #  * $set1 and $set2 are array references
# #  * neither @$set1 or @$set2 contain duplicates

my @set1 = qw(one foo three);
my @set2 = qw(foo bar inn);
my @set3 = qw(bar inn tavern);

ok( eq_set( [ set_union( \@set1, \@set2 ) ], [qw(one foo three bar inn)] ) );

ok( eq_set( [ set_union( \@set2, \@set3 ) ], [qw(foo bar inn tavern)] ) );

ok(
    eq_set(
        [ set_union( \@set1, \@set3 ) ],
        [qw(one foo three bar inn tavern)]
    )
);

ok( eq_set( [ set_intersection( \@set1, \@set2 ) ], [qw(foo)] ) );

ok( eq_set( [ set_intersection( \@set2, \@set3 ) ], [qw(bar inn)] ) );

ok( eq_set( [ set_intersection( \@set1, \@set3 ) ], [] ) );

1;
