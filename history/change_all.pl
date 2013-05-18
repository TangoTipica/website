#!/usr/bin/perl -w
use strict;
my $root='slide';
my $back='<img src="../arrow_back.png" border="0" alt="Previous slide">';
my $forward='<img src="../arrow_forward.png" border="0" alt="Next slide">';
for my $i (1..14) {
my $name=$root.(($i<10)?'0':'').$i.'.html';
print "$name\n";
#if (not -e "$name.orig") {
system("mv -f $name $name.orig");
#}
open(IN,"<$name.orig");
open(OUT,">$name");
while(<IN>) {
s/arrow_back/images\/arrow_back/;
s/arrow_forward/images\/arrow_forward/;
    print OUT $_;
}
close IN;
close OUT;

}