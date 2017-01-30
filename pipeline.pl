#!/usr/bin/perl

#!/usr/bin/perl

print "Enter the input files"."\n";
my $firstfile =<STDIN>;
print "Enter the number for filter of occurrence of read in each strain"."\n";
my $secondfile =<STDIN>;
print "Enter the reference file"."\n";
my $thirdfile =<STDIN>;
print "Enter the ptt file"."\n";
my $fourthfile =<STDIN>;
$fifthfile = $firstfile;
chomp $fifthfile;
print "Enter the 'nt' database name"."\n";
my $sixthfile =<STDIN>;
system "perl prepare.pl $firstfile";
system "perl count1.pl *.fq.out";
system "perl comp.pl *.fq.out.out1 >compare.txt";
system "perl collapse1.pl $secondfile";
system "perl align2.pl $thirdfile"; 
system "perl ptt.pl $fourthfile";
system "perl ptt_count.pl >coverage.txt"; #output file giving the proteins covered by sequenced reads with their location in the genome.
system "perl ptt1.pl ptt.txt >p.txt";
system "perl matrix.pl $fifthfile >matrix.txt";
system "perl matrix1.pl matrix.txt >matrix1.txt";
system "perl matrix_final.pl >final.txt"; 
system "perl ptt2.pl $fifthfile >refmatrix.txt"; #presence/absence of genes in specific strains in binary format.
system "perl split.pl $sixthfile";
system "perl index.pl";
system "perl ext-read.pl";
system "perl align-nt.pl";
system "perl sam.pl";
system "perl mapped.pl";
system "perl ref.pl";
system "perl ptt1-nt.pl ref-nt.txt >ptt-nt.txt";
system "perl matrix-nt.pl $fifthfile >matrix-nt.txt";
system "perl matrix1-nt.pl matrix-nt.txt >matrix1-nt.txt";
system "perl matrix_final-nt.pl $fifthfile >ntmatrix.txt";
system "cat refmatrix.txt ntmatrix.txt >panmatrix.txt";
