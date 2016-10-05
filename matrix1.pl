#!/usr/bin/perl 

 
my %k;


while (my $line=<>) {
    
    my @F=split(/\t/,$line);
$size= @F;
for ($i=1;$i<=$size;$i++)
{

   
    $k{$F[0]}{$F[$i]}=1;
    $k{$F[0]}{$F[1]}=1;
}
}


my @names=(sort keys(%k));



foreach my $name (@names) {
chomp $name;
    print "$name\t";
    foreach my $value ( (sort keys(%{$k{$name}})) ){
chomp $value;
      print $value."\t";

    } 
  print "\n"; 
    

}
