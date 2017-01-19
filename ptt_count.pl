use strict;
use warnings;

my (%covered);

open my $m, '<', 'ptt.txt' or die 'Cannot open ptt.txt';
while (my $seq = <$m>) {
    chomp $seq;

    my ($start, $range, $name, $sequence) = split /\t/, $seq;
    my ($fm,$to) = split /\.\./,$range;
my @sequence = split //,$sequence;
my $size = @sequence;
my $s = $size - 1;

    my $end = $start + $s;
    $end = $to if $end > $to;
    for(my $i=$start;$i<=$end;$i++) {
        $covered{$range}{$i} = 1;
        
    }
}
print "Genome location"."\t"."Bases covered by reads"."\t"."Total bases in respective protein"."\n";


for my $range (sort keys %covered) {

 my ($fm1,$to1) = split /\.\./,$range;
my $diff = $to1-$fm1;
    printf " %s \t %d",$range,scalar keys %{$covered{$range}};
print "\t".$diff."\n";

} 

close $m;





