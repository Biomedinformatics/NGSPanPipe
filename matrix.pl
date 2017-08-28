my @files= @ARGV;

foreach $file (@files) {
@file1 = split /\./, $file;
$file2 = $file1[0];
$file3 = $file3."\t".$file2;
}
print $file3;
@file4 = split /\t/, $file3;
$size = @file4;

open (FH, "p.txt");
while ($seq = <FH>)
{
@seq = split /\t/, $seq;
$size1 = @seq;
for ($i=1; $i<=$size+1; $i++){
chomp @seq[$size1-1];
print @seq[0]."\t";
 @seq1 = split /\./, @seq[$i];
$seq2= @seq1[0];
chomp $seq2;
for ($j=1; $j<=$size-1; $j++){
if (@file4[$j] eq "$seq2"){
print @file4[$j].":1"."\t";}
else{
print @file4[$j].":0"."\t";}
}

print "\n";
}

}


