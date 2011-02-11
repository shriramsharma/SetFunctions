package SetFunctions;

use strict;
use warnings;

use Data::Dump qw/dump/;

use Exporter qw/import/;

our @EXPORT = qw/set_union set_intersection eq_set/;

sub set_union {
    my ( $set1, $set2 ) = @_;

    my @union = ();
    @union = @{$set1};

    foreach ( @{$set2} ) {
        push( @union, $_ ) unless ( @{$set1} ~~ $_ );
    }

    return @union;
}

sub set_intersection {
    my ( $set1, $set2 ) = @_;

    my @intersect = ();

    @intersect = grep { @{$set1} ~~ $_  } @{$set2};

    return @intersect;
}

sub eq_set {
    my ( $set1, $set2 ) = @_;

    return 0 unless(@{$set1} ~~ @{$set2});

    return 1;
}

1;
