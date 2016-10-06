#!/usr/bin/perl

system "perl prepare.pl *.fq";   # input file should be reads in fastq format.
system "perl count1.pl *.fq.out";
system "perl comp.pl *.fq.out.out1 >compare.txt";
system "perl collapse1.pl 2"; # 2 can be replaced by the filter cutoff user wants to specify i.e.total number of occurrence of reads in all strains....we put 2 in case of simulated reads.
system "perl align2.pl"; # open align.pl and change the reference file name according to the genome of interest.
system "perl ptt.pl NC_000962.fna >ptt.txt"; # the reference ptt file name has to be changed as user's requirement.
system "perl ptt_count.pl >count.txt"; #output file giving the proteins covered by sequenced reads with their location in the genome.
system "perl ptt1.pl ptt.txt >p1.txt";
system "perl ptt2.pl >p.txt";
system "perl matrix.pl >matrix.txt";
system "perl matrix1.pl matrix.txt >matrix1.txt";
system "perl matrix_final.pl >panmatrix.txt"; #presence/absence of genes in specific strains in binary format.
