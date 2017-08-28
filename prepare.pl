 use strict;
    use warnings;
my @files= @ARGV;
   for my $input_file (@files) {
system "sed -i '1s/^/string/' $input_file";
  system "sed -i '0~4 s/\$/string/g' $input_file";
    
}
 
