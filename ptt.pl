use strict;
use warnings;

open my $m, '<', 'mapped.txt' or die 'Cannot open mapped.txt';
while (<$m>) {
    chomp;
    my @l = split /\t/;
my @seq = split(/\|/, $l[0]);
my $name = $seq[3];
    open my $p, '<', 'NC_000962.ptt' or die 'Cannot open NC_000962.ptt';
    while (<$p>) {
        next if /^Location/;

        chomp;
        my (@range) = split(/\t/, $_);
        my ($fm, $to) = split(/\.\./, $range[0]);
        if ($l[3] >= $fm and $l[3] <= $to)
           { print $l[3]."\t".$range[0]."\t".$range[8]."\t".$l[9]."\t".$name."\n";
        }
    }
    close $p;
}
close $m;
