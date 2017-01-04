@files = @ARGV;
$files = shift;
open (FH, "compare.txt");
open (FA, ">>collapse.fastq");
$qual = shift;
$/="";
while ($seq=<FH>)
{
@seq1 = split (/\tcount/, $seq);
@se = split (/:/, @seq1[1]);
$se = @se[1];
@s = split (/\t/, @seq1[0]);
$s = @s[0];
if ($se >= $files)
{print FA $s."\n";}


}
