opendir(DIR, ".");
@files = grep(/\.fq$/,readdir(DIR));
closedir(DIR);

foreach $file (sort @files) {
@file1 = split /\./, $file;
$file2 = $file1[0];
$file3 = $file3."\t".$file2;
}

print "gene".$file3."\n";

open (FH, "matrix1.txt");
while ($seq = <FH>)
{ 
@seq = split (/\t/, $seq);

$size = @seq;

print @seq[0];

for ($i=1; $i<=$size-2; $i++)
{$j=$i+1;
@p = split (/\:/, @seq[$i]);
@p1 = split (/\:/, @seq[$j]);
$s= @p[1];
$s1= @p1[1];
chomp $s; chomp $s1;
if (@p[0] eq @p1[0])
{ 
print $s1."\t";
$i=$i+1;}
else
{print $s."\t";
}
}
print "\n";
}
