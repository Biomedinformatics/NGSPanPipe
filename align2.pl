#!/usr/bin/perl

@files = @ARGV;
$files = shift;
system "bwa index ". $files;
system "bwa aln ".$files." collapse.fastq > collapse.sai";


system "bwa samse ". $files." collapse.sai collapse.fastq > collapse.sam"; 


open (FA, ">>mapped.txt");
open (FA1, ">>unmapped.txt");

open (FH1, "collapse.sam");
while ($seq1=<FH1>)
{
@seq=split(/\t/, $seq1);
if (@seq[13]=~m/^X0:i:1/)
{print FA $seq1;}
else
{print FA1 $seq1;}

  }
file;



