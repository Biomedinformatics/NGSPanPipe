open (FH, "map.txt");
open (FA, ">>ref-nt.txt");
while ($seq = <FH>)
{
@seq1 = split (/\t/, $seq);
@seq = split (/\|/, @seq1[0]);
$str = @seq[3];
@str = split (/\./, $str);
$str1 = @str[0];
print FA @seq1[2]."\t".$str1."\n";


}
