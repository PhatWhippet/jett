	#!/usr/bin/perl -w
use POSIX qw/strftime/;### CLEAR

use PDF::API2;

my $pdf = PDF::API2->open('/JETT-VDP/USA-DL-Insert.pdf');

#my $pdf1 = PDF::API2->open('/Users/home/Desktop/invoicing/3.PPF');### CLEAR### CLEARmy $time = strftime "%H:%M:%S", localtime;
my $date = strftime "%d/%m/%Y", localtime;
#my $time = localtime(time);

print $date;
print $time;

    use strict;
    use warnings;
    use File::stat;

    my $filesize = stat("/JETT-VDP/USA-DL-Insert.pdf")->size;
    #my $filesize = stat("/JETT-VDP/JAP_newa4.pdf")->name;
    print "Size: $filesize\n";
  #  print "Size: $filename\n";
 open (MYFILE, '>>new.rst');

 print MYFILE "United States;$date;$filesize;$time";
 print MYFILE ";";
# print MYFILE $pdf->pages() #/2 + $pdf1->pages()/2 ;
 print MYFILE ";";
 print MYFILE $pdf->pages() * 20000  ;
  print MYFILE ";";
 print MYFILE $pdf->pages() * 20000   ;
  print MYFILE ";USA Print Co.; GOLDEN GATE MOVIE; DL-Insert";
 close (MYFILE); 
    my $filesize = stat("/JETT-VDP/USA-DL-Insert.pdf")->size;
    #my $filesize = stat("/JETT-VDP/JAP_newa4.pdf")->name;
    print "Size: $filesize\n";
  #  print "Size: $filename\n";
 open (MYFILE, '>>new.rst');
 print MYFILE "\n";
 print MYFILE "United States;$date;$filesize;$time";
 print MYFILE ";";
# print MYFILE $pdf->pages() #/2 + $pdf1->pages()/2 ;
 print MYFILE ";";
 print MYFILE $pdf->pages() * 20000  ;
  print MYFILE ";";
 print MYFILE $pdf->pages() * 20000   ;
  print MYFILE ";USA Print Co.; GOLDEN GATE MOVIE; C5-Envelope";
 close (MYFILE); 
     my $filesize = stat("/JETT-VDP/USA-DL-Insert.pdf")->size;
    #my $filesize = stat("/JETT-VDP/JAP_newa4.pdf")->name;
    print "Size: $filesize\n";
  #  print "Size: $filename\n";
 open (MYFILE, '>>new.rst');
 print MYFILE "\n";
 print MYFILE "United States;$date;$filesize;$time";
 print MYFILE ";";
# print MYFILE $pdf->pages() #/2 + $pdf1->pages()/2 ;
 print MYFILE ";";
 print MYFILE $pdf->pages() * 20000  ;
  print MYFILE ";";
 print MYFILE $pdf->pages() * 20000   ;
  print MYFILE ";USA Print Co.; GOLDEN GATE MOVIE; C4-Letter";
 close (MYFILE);
      my $filesize = stat("/JETT-VDP/USA-DL-Insert.pdf")->size;
    #my $filesize = stat("/JETT-VDP/JAP_newa4.pdf")->name;
    print "Size: $filesize\n";
  #  print "Size: $filename\n";
 open (MYFILE, '>>new.rst');
 print MYFILE "\n";
 print MYFILE "United States;$date;$filesize;$time";
 print MYFILE ";";
# print MYFILE $pdf->pages() #/2 + $pdf1->pages()/2 ;
 print MYFILE ";";
 print MYFILE $pdf->pages() * 20000  ;
  print MYFILE ";";
 print MYFILE $pdf->pages() * 20000   ;
  print MYFILE ";USA Print Co.; GOLDEN GATE MOVIE; A3-Poster";
 close (MYFILE);
rename("/JETT-VDP/new.rst", "/JETT-VDP/USA-Invoice.inv") || die ( "Error in renaming" );### CLEAR
