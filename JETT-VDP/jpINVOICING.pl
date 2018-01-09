	#!/usr/bin/perl -w
use POSIX qw/strftime/;### CLEAR

use PDF::API2;

my $pdf = PDF::API2->open('/JETT-VDP/UK/JAP_newa4.pdf');

#my $pdf1 = PDF::API2->open('/Users/home/Desktop/invoicing/3.PPF');### CLEAR### CLEARmy $time = strftime "%H:%M:%S", localtime;
my $date = strftime "%d/%m/%Y", localtime;
#my $time = localtime(time);

print $date;
print $time;

    use strict;
    use warnings;
    use File::stat;

    my $filesize = stat("/JETT-VDP/UK/JAP_newa4.pdf")->size;
    #my $filesize = stat("/JETT-VDP/UK/JAP_newa4.pdf")->name;
    print "Size: $filesize\n";
  #  print "Size: $filename\n";
 open (MYFILE, '>>new.rst');

 print MYFILE "UK;$date;$filesize;$time";
 print MYFILE ";";
# print MYFILE $pdf->pages() #/2 + $pdf1->pages()/2 ;
 print MYFILE ";";
 print MYFILE $pdf->pages()   ;
  print MYFILE ";STREAM PARTNER PRINT UK";
 close (MYFILE); 

rename("/JETT-VDP/UK/new.rst", "/JETT-VDP/UK/UK_temp.INV") || die ( "Error in renaming" );### CLEAR
