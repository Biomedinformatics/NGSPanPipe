# NGSPanPipe

pipeline.pl -- A perl script for reference genome panmatrix.

ABSTRACT:

We report here a one step pipeline to perform pan genome construction. This pipeline employing a novel approach 
uses raw reads as input, collapsing them and generating contigs so as to give maximum genome coverage and a 
matrix file depicting presence/absence of genes in binary format. The user will also be provided with the panmatrix of acquired 
genes. This script will also give a novel.txt file with reads that can be subjected to denovo assembly and analyzed as novel genes which are neither present in reference genome nor acquired by any other bacterial genome.

PREREQUISITE:

NGSPanPipe is platform independent. The only prerequisite is that the user should have perl and BWA (Burrows-Wheeler Aligner) tool installed in his system. If the used desires to get the genes acquired by the test genome then he need to download NCBI nt database, unzip it and put it in the same folder where the script is.

IMPLEMENTATION:

The single script pipeline (pipeline.pl) integrates multiple perl scripts. Users have to download the zipped file from clone or download tab and execute pipeline.pl. This generates output panmatrix.txt in binary format and coverage.txt gives pangenome coverage. One additional file is also obtained as output:novel.txt containing potential novel reads respectively.
