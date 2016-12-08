#!/usr/bin/perl

print "Enter the input files"."\n";
my $firstfile =<STDIN>;
print "Enter the filtering value (copy of reads in all strains)"."\n";
my $secondfile =<STDIN>;
print "Enter the reference file"."\n";
my $thirdfile =<STDIN>;
print "Enter the ptt file"."\n";
my $fourthfile =<STDIN>;
system "perl prepare.pl $firstfile";
system "perl count1.pl *.fq.out";
system "perl comp.pl *.fq.out.out1 >compare.txt";
system "perl collapse1.pl $secondfile";
system "perl align2.pl $thirdfile"; 
system "perl ptt.pl $fourthfile";
system "perl ptt_count.pl >count.txt"; #output file giving the proteins covered by sequenced reads with their location in the genome.
system "perl ptt1.pl ptt.txt >p.txt";
system "perl matrix.pl >matrix.txt";
system "perl matrix1.pl matrix.txt >matrix1.txt";
system "perl matrix_final.pl >final.txt"; 
system "perl ptt2.pl >panmatrix.txt"; #presence/absence of genes in specific strains in binary format.
