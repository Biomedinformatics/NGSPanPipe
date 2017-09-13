# NGSPanPipe

pipeline.pl -- A perl script for pangenome identification.

ABSTRACT:

We report here a one step pipeline to perform pan genome construction. This pipeline employing a novel approach uses raw reads as input in FastQ format, collapsing them and generating contigs so as to give maximum genome coverage and a matrix file depicting presence/absence of genes present in reference genome and also acquired genes in binary format. This script will also give a novel.txt file with reads that can be subjected to denovo assembly and analyzed as novel genes which are neither present in reference genome nor acquired by any other bacterial genome.

PREREQUISITE:

NGSPanPipe is platform independent. The only prerequisite is that the user should have perl and BWA (Burrows-Wheeler Aligner) tool installed in his system. The reference file and ptt file for desired organism has to be placed in the script folder. The user also needs to download NCBI nt database, unzip it and put it in the same folder where the script is to get the genes acquired by the test genome.

IMPLEMENTATION:

The single script pipeline (pipeline.pl) integrates multiple perl scripts. Users have to download the zipped file from clone or download tab and execute pipeline.pl by the command 'perl pipeline.pl'. This generates output panmatrix.txt in binary format and coverage.txt gives pangenome coverage. One additional file 'novel.txt' is also obtained as output containing potential novel reads.
