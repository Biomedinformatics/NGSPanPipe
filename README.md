# NGSPanPipe

pipeline.pl -- A perl script for pangenome identification.

ABSTRACT:

We report here a one step pipeline to perform pan genome construction. This pipeline employing a novel approach uses raw reads as input in FastQ format, collapsing them and generating contigs so as to give maximum genome coverage and a matrix file depicting presence/absence of genes present in reference genome and also acquired genes in binary format. This script will also give a novel.txt file with reads that can be analyzed further for identification of novel genes or pathways.

PREREQUISITE:

NGSPanPipe is platform independent. Before execution, it requires input from the command line such as reads in FASTQ format, reference sequence file (FASTA format), parameter for filtering of reads (number of strains a read should be present in to be considered as real read, it has been taken as n=5 for test data) and reference genome protein translation table (PTT) file (*.ptt format as present in NCBI) to which the aligned reads are to be mapped. The user should have perl and BWA (Burrows-Wheeler Aligner) tool installed in his system. The reference file and ptt file for desired organism has to be placed in the script folder.

IMPLEMENTATION:

The single script pipeline (pipeline.pl) integrates multiple perl scripts. Users have to download NGSPanPipe and execute pipeline.pl by the command 'perl pipeline.pl'. This generates output panmatrix.txt in binary format and coverage.txt gives pangenome coverage. One additional file 'novel.txt' is also obtained as output containing unannotated novel reads.
