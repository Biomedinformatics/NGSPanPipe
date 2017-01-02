print "Enter the input files (raw reads)"."\n";
my $firstfile =<STDIN>;
print "Enter the nt database file name"."\n";
my $secondfile =<STDIN>;
system "perl split.pl $secondfile";
system "perl index.pl";
system "perl ext-read.pl";
system "perl align-nt.pl";
system "perl sam.pl";
system "perl mapped.pl";
system "perl ptt1-nt.pl map.txt >ptt.txt";
system "perl matrix-nt.pl $firstfile >matrix-nt.txt";
system "perl matrix1-nt.pl matrix-nt.txt >matrix1-nt.txt";
system "perl matrix_final-nt.pl $firstfile >matrix_final-nt.txt";

