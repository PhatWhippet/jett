#!/usr/bin/perl
use warnings;
#use strict;
#use Net::FTP;
use Cwd;

 
use warnings; 
use File::Copy

$|++;    # Autoflush### CLEARmy @old_files = glob "C:\\JETT-VDP\\temp\\*.sd*"; 
my $arc_dir = "C:\\JETT-VDP"; 
 
foreach my $old_file (@old_files) 
{ 
    my ($short_file_name) = $old_file =~ m~/(.*?\.dat)$~; 
    my $new_file = $arc_dir . $short_file_name; 
 
    move($old_file, $new_file) or die "Could not move $old_file to $new_file: $!\n"; 
} 
;
