open (FH, "unmapped.txt");
open (FA, ">>mapped.fq");
while ($seq = <FH>)

{
@seq = split (/\t/, $seq);
if (@seq[0]=~m/^\@SQ/)
{next;}
print FA "@".@seq[0]."\n".@seq[9]."\n+\n".@seq[10]."\n";

}
