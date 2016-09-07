use strict;
use warnings;

open my $m, '<', 'mapped.txt' or die 'Cannot open mapped.txt';

while (<$m>) {
chomp;
   
    my @l = split /\t/;
 

    open my $p, '<', $ARGV[0] or die 'Cannot open $file2';

    while (<$p>) {
    next if $. == 1;
    next if $. == 2;
    next if $. == 3;

       $_=~ s/\r//;
    chomp;
    
        
        my (@range) = split(/\t/, $_);
        my ($fm, $to) = split(/\.\./, $range[0]);
        if ($l[3] >= $fm and $l[3] <= $to)
           { print $l[3]."\t".$range[0]."\t".$range[8]."\t".$l[9]."\n";
        }
    }
    close $p;
}
close $m;
