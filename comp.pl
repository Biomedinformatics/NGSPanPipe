#!/usr/bin/env perl
use strict;

no warnings qw( numeric );
my %seen;

$/ = "";
while (<>) {
    chomp;
    my ($key, $value) = split ('\t', $_);

    my @lines = split /\n/, $key;
    my $key1 = $lines[1];

    $seen{$key1} //= [ $key ];
    push (@{$seen{$key1}}, $value);
}

foreach my $key1 ( sort keys %seen ) {
my $tot = 0;
my $file_count = @ARGV;
for my $val ( @{$seen{$key1}} ) {
        $tot += ( split /:/, $val )[0];
    }   
    
if ( @{ $seen{$key1} } >= $file_count) {


        print join( "\t", @{$seen{$key1}});
        print "\tcount:". $tot."\n\n";
    }
}
