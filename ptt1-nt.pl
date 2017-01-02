#!/usr/bin/perl 

 
my %k;


while (my $line=<>) {
    
    my @F=split(/\t/,$line);


    $k{$F[0]}{$F[1]}=1;
   
    
    
    

}


my @names=(sort keys(%k));



foreach my $name (@names) {
chomp $name;
    print "$name\t";
    foreach my $value ( (sort keys(%{$k{$name}})) ){
chomp $value;
      print "\t$value";

    } 
  print "\n"; 
    

}
