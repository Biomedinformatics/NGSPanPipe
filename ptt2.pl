open (FH, "p1.txt");
while ($seq = <FH>)
{
@seq = split (/\t/, $seq);
$pos = @seq[0];

open (FH1, "ptt.txt");
while ($seq1 = <FH1>)
{
@seq1 = split (/\t/, $seq1);
$pos1 = @seq1[1];
if ($pos eq $pos1)
{chomp @seq1[2]; chomp $seq;
print $seq."\t".@seq1[2]."\n";
last;}
}



}
