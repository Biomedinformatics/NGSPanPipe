 use strict;
    no warnings;
my @files= @ARGV;

   for my $input_file (@files) {
if ($input_file == "*.gz")
{system "gunzip $input_file";
my @outfile = split (/.gz/, $input_file);
my $out = $outfile[0];

system "sed -i '1s/^/string/' $out";
  system "sed -i '0~4 s/\$/string/g' $out";}
else {
system "sed -i '1s/^/string/' $input_file";
system "sed -i '0~4 s/\$/string/g' $input_file";
}

  }  
