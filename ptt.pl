use strict;
use warnings;
my @files = @ARGV;
my $files = shift;
open (FA, ">ptt.txt");
open my $m, '<', 'mapped.txt' or die 'Cannot open mapped.txt';
while (<$m>) {
    chomp;
    my @l = split /\t/;
my @seq = split(/\|/, $l[0]);
my $name = $seq[3];
    open my $p, '<', $files or die 'Cannot open .ptt';
    while (<$p>) {
        next unless $. > 3;

        chomp;
        my (@range) = split(/\t/, $_);
        my ($fm, $to) = split(/\.\./, $range[0]);
        if ($l[3] >= $fm and $l[3] <= $to)
           { print FA $l[3]."\t".$range[0]."\t".$range[8]."\t".$l[9]."\t".$name."\n";
        }
    }
    close $p;
}
close $m;
