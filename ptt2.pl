opendir(DIR, ".");
@files = grep(/\.fq$/,readdir(DIR));
closedir(DIR);

foreach $file (sort @files) {
@file1 = split /\./, $file;
$file2 = $file1[0];
chomp $file2;
$file3 = $file3."\t".$file2;
}
print "Protein name"."\t"."Position".$file3."\n";
open (FH, "final.txt");
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
print @seq1[2]."\t".$seq."\n";
last;}
}



}
