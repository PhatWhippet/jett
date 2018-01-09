use strict;
use warnings;
use open qw(:std :utf8);

my $rename = 0;

for my $oldFileName (<*>) {
    my $newFileName = $oldFileName;
    $newFileName =~ s/#U([a-f0-9]+)([^#]+)?/chr( hex $1 ) . ( $2 ? $2 : '' )/gei;

    if ( $newFileName eq $oldFileName ) {
        warn "File '$oldFileName' not in convertible format!\n";
        next;
    }

    if ( -e $newFileName ) {
        warn "File '$newFileName' already exists!\n";
        next;
    }

    print $rename ? 'Renaming: ' : 'Testing: ';
    print "$oldFileName -> $newFileName\n";
    rename $oldFileName, $newFileName if $rename;
}

print "Done!\n\n";