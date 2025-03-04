#! /usr/bin/perl
use strict; use warnings;
use 5.10.0;
use File::Spec;

my $dir = File::Spec->rel2abs($0); $dir =~ s/\/[^\/]+$//;

for (glob "Isles/*"){
 next unless /(\S+)/;
 my ($prefix) = ($1);
 $prefix =~ s/Isles\///;
 print "cd Isles/$prefix; perl $dir/ice.pl $prefix.fa; cd ../../;\n"; 
 print "cd Isles/$prefix; perl $dir/phage.pl $prefix.fa; cd ../../;\n"; 
}
