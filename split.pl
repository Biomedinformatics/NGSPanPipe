@files = @ARGV;
$files = shift;
open (FA, ">>str.txt");
my $fasta_file = $files;
my $seqs_per_file = 1000000;  # whatever your batch size

my $file_number = 1;  # our files will be named like "something.fasta.1"
my $seq_ctr = 0;

open(FASTA, $fasta_file) || die("can't open $fasta_file");


while(<FASTA>) {

    if(/^>/) {

       # open a new file if we've printed enough to one file
       if($seq_ctr++ % $seqs_per_file == 0) {
         close(OUT);
$num = $num."\n".$fasta_file . "." . $file_number;
         open(OUT, "> " . $fasta_file . "." . $file_number++);




       }

    }

    print OUT $_;

 }
print FA $num;
