#!/usr/bin/perl


system "bwa index NC_000962.fna";
system "bwa aln NC_000962.fna collapse.fastq > collapse.sai";


system "bwa samse NC_000962.fna collapse.sai collapse.fastq > collapse.sam"; 


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






