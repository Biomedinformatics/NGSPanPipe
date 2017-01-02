open (FH,"str.txt");
open (FA, ">>sam.txt");
while ($seq = <FH>)
{ next if $seq=~m/^\n/;
chomp $seq;
$file = $seq.".sam";
print FA $file."\n";
}
