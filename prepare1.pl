use strict;
    use warnings;
my @files= @ARGV;
   for my $input_file (@files) {

   my $output_file = $input_file.".out";
    process_file($input_file, $output_file);
}
sub process_file {
    my($input_file, $output_file) = @_;  
    

    my $file = shift or die "Usage: $0 FILE\n";
    open my $fh, '<', $file or die "Could not open '$file' $!";
    open my $fa, '>', $output_file;

    while (my $line = <$fh>) {

$line =~ s/string/\n\n\@string\|\|\|$file\|/g;
$line =~ s/$file\|\n/$file\|/g;

   print $fa $line;
}

}

