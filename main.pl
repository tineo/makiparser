#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';


use strict;
use warnings;

my $filename = 'test.c';
if (open(my $fh, '<:encoding(UTF-8)', $filename)) {
    while (my $row = <$fh>) {
        chomp $row;
        print "$row\n";
    }
} else {
    warn "Could not open file '$filename' $!";
}