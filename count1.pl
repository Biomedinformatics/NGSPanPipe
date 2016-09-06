    use strict;
    use warnings;

my @files= @ARGV;
   for my $input_file (@files) {
    my $output_file = $input_file.".out1";

    process_file($input_file, $output_file);
}
sub process_file {
    my($input_file, $output_file) = @_;  
    my %seen;
    my $file = shift or die "Usage: $0 FILE\n";
    open my $fh, '<', $file or die "Could not open '$file' $!";
    open my $fa, '>', $output_file;
$/="";
    while (my $block = <$fh>) {
        chomp $block;
        my @lines = split /\n/, $block;
        unless ($seen{ $lines[1] }{count}++) {
            $seen{ $lines[1] }{block} = $block."\t";
        }
    }

    for my $str (sort keys %seen) {
        printf {$fa} "%-s %s", @{ $seen{$str}}{qw{ block count }};
        print  {$fa} ":".$input_file."\n\n";
    }
}
