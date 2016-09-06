use strict;
use warnings;

open my $m, '<', 'mapped.txt' or die 'Cannot open mapped.txt';

while (<$m>) {
chomp;
   
    my @l = split /\t/;
    open my $p, '<', 'NC_000962.ptt' or die 'Cannot open NC_000962.ptt';
my $skip = 1;
    while (<$p>) {
       $_=~ s/\r//;
    chomp;
    next if ($skip eq 1)
    next if ($skip eq 2)
    next if ($skip eq 3)
    $skip++;
        
        my (@range) = split(/\t/, $_);
        my ($fm, $to) = split(/\.\./, $range[0]);
        if ($l[3] >= $fm and $l[3] <= $to)
           { print $l[3]."\t".$range[0]."\t".$range[8]."\t".$l[9]."\n";
        }
    }
    close $p;
}
close $m;
