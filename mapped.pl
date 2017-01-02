open (FH1,"sam.txt");
while ($seq = <FH1>)
{chomp $seq;

open (FA, ">>map.txt");
open (FA1, ">>novel.txt");
open (FH, "$seq");
while ($seq1=<FH>)
{
@seq=split(/\t/, $seq1);
if (@seq[0]=~m/^\@SQ/)
{next ;}
if (@seq[13]=~m/^X0:i:1/)
{print FA $seq1;}
else
{print FA1 $seq1;}

  }
}
