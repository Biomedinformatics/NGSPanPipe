#!/usr/bin/perl
open (FH,"str.txt");

while ($seq = <FH>)

{ chomp $seq;

system "bwa aln ".$seq." mapped.fq > ".$seq.".sai";


system "bwa samse ".$seq." ".$seq.".sai mapped.fq >".$seq.".sam"; 

}






