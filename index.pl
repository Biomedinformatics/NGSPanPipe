open (FH, "str.txt");
while ($s = <FH>)
{
chomp $s;
system "bwa index $s";


}
