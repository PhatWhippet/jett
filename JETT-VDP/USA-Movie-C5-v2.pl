#!/usr/bin/perl### CLEAR use PDF::API2;
 use PDF::Table;

   use DBI;
   
   $|=1;
   
   $dsn = "DBI:ODBC:DSN=Mailing";
           $dbh = DBI->connect($dsn, 'YourUserName', 'YourPassword');
   
   if ( !defined $dbh ) {
     exit;
   }
   
   # use the four lines below if the query results
   # in many rows or if you get 'out of memory' errors
   
   #$SQL_QUERY="SET SQL_BIG_TABLES=1";
   #  $cursor = $dbh->prepare( "$SQL_QUERY" );
   #  $cursor->execute;
   #  $cursor->finish;
   
   $SQL_QUERY=<<__CURSOR_1__;
     delete from data 
__CURSOR_1__
   
   $cursor = $dbh->prepare( "$SQL_QUERY" );
   $cursor->execute;                     
   $cursor->finish;
   $dbh->disconnect;

# Declare varaibles
my $DBNAME   =  "DSN=Mailing";
my $DBTABLE  =  "data";
my $DBUSER   =  "YourUserName";
my $DBPASS   =  "YourPassword";
#my $DBHOST   =  "10.163.0.1";
my $csvfile  =  "C:/JETT-VDP/datafile.sde";

# Connect to database at hand, or die
my $dbh = DBI->connect("DBI:ODBC:$DBNAME", $DBUSER, $DBPASS)
    or die "DB connect failed: $DBI::errstr";

my $update_h = $dbh->prepare(qq{INSERT INTO $DBTABLE (A1, A2, A3, A4, A5, A6, A7, A8, A9, B1, B2, B3, B4, B5, B6, B7, B8, B9, C1, C2, C3, C4, C5, C6, C7, C8, C9, D1, D2, D3, D4, D5, D6, D7) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?,?, ?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?, ?)});### CLEARopen my $ih, $csvfile or die "Can't open file, $csvfile: $!";

while (<$ih>) {
    chomp;
    
   my @rows = split ';'; # Is a semicolon your delimiter, or is it a comma?
### CLEAR

    my $A1   =  $rows[0];
    my $A2   =  $rows[1];

    my $A3  =  $rows[2];
    my $A4   =  $rows[3];
    my $A5  =  $rows[4];

    my $A6  =  $rows[5];
    my $A7   =  $rows[6];
    my $A8   =  $rows[7];

    my $A9  =  $rows[8];
    my $B1   =  $rows[9];
    my $B2   =  $rows[10];
    my $B3  =  $rows[11];
    my $B4   =  $rows[12];
    my $B5  =  $rows[13];

    my $B6  =  $rows[14];
    my $B7   =  $rows[15];
    my $B8   =  $rows[16];

    my $B9  =  $rows[17];
	
	my $C1   =  $rows[18];
    my $C2   =  $rows[19];
    my $C3  =  $rows[20];
    my $C4   =  $rows[21];
    my $C5  =  $rows[22];

    my $C6  =  $rows[23];
    my $C7   =  $rows[24];
    my $C8   =  $rows[25];

    my $C9  =  $rows[26];
	
		    my $D1   =  $rows[27];
    my $D2   =  $rows[28];
    my $D3  =  $rows[29];
    my $D4   =  $rows[30];
    my $D5  =  $rows[31];

    my $D6  =  $rows[32];
    my $D7   =  $rows[33];
   ### CLEAR
    $update_h->execute($A1, $A2, $A3, $A4, $A5, $A6, $A7, $A8, $A9, $B1, $B2, $B3, $B4, $B5, $B6, $B7, $B8, $B9, $C1, $C2, $C3, $C4, $C5, $C6, $C7, $C8, $C9, $D1, $D2, $D3, $D4, $D5, $D6, $D7) or die $dbh->errstr;
}

my $res = $dbh->selectall_arrayref( q( SELECT A1, A2, A3, A4, A5, A6, A7, A8, A9, B1, B2, B3, B4, B5, B6, B7, B8, B9, C1, C2, C3, C4, C5, C6, C7, C8, C9, D1, D2, D3, D4, D5, D6, D7 FROM data));
#my $res1 = $dbh->selectall_arrayref( q( SELECT A1 FROM data));### CLEAR
### CLEARforeach( @$res ) {
    print "\n$_->[0], $_->[1] $_->[2]\n\n";
use strict;
use warnings;
use GD::Barcode::QRcode;

open my $OUT, '>', $_->[2]. $_->[9]. '.png';
#open my $OUT, '>', '.png';
binmode($OUT);

my $_->[0] = GD::Barcode::QRcode->new(
	$_->[2]. $_->[9],  
	{ Ecc => 'L', Version=>4, ModuleSize => 1.9},
	);

print $OUT $_->[0]-> plot->png;
close $OUT;
}### CLEAR

# PERL MODULES
use DBI;
use DBD::mysql;
 my $pdftable = new PDF::Table;
# HTTP HEADER
print "Initialising Millar component:: please wait  \n\n RUNNING...";

# CONFIG VARIABLES
$platform = "ODBC";
$database = "DSN=Mailing";
$host = "10.163.0.1";
$port = "3306";
$tablename = "data";
$user = "YourUserName";
$pw = "YourPassword";

# DATA SOURCE NAME
$dsn = "dbi:ODBC:$database";

# PERL DBI CONNECT
$connect = DBI->connect($dsn, $user, $pw);

# PREPARE THE QUERY
$query = "Select A1, A2, A3, A4, A5, A6, A7, A8, A9, B1, B2, B3, B4, B5, B6, B7, B8, B9, C1, C2, C3, C4, C5, C6, C7, C8, C9, D1, D2, D3, D4, D5, D6, D7FROM data where B1 = 'USA' ORDER BY id";
$query_handle = $connect->prepare($query);

# EXECUTE THE QUERY
$query_handle->execute();

# BIND TABLE COLUMNS TO VARIABLES
$query_handle->bind_columns(undef, \$id ,\$A1, \$A2, \$A3, \$A4, \$A5, \$A6, \$A7, \$A8, \$A9, \$B1, \$B2, \$B3, \$B4, \$B5, \$B6, \$B7, \$B8, \$B9, \$C1, \$C2, \$C3, \$C4, \$C5, \$C6, \$C7, \$C8, \$C9, \$D1, \$D2, \$D3, \$D4, \$D5, \$D6, \$D7);

# LOOP THROUGH RESULTS
#while($query_handle->fetch()) {
 #  print "$id, $name";
#} ### CLEAR    # Create a blank PDF file
    $pdf = PDF::API2->new(865, 612);
#$eee->print('           r');
    # Open an existing PDF file
   # $pdf = PDF::API2->open('/JETT-VDP/newc5.pdf');
while($query_handle->fetch()) {
    # Add a blank page
    $page = $pdf->page(865, 612);

    # Retrieve an existing page
    $page = $pdf->openpage($page_number);

    # Set the page size
    $page->mediabox(865, 612);
 my $gfx = $page->gfx;
        $gfx->image($pdf->image_jpeg('\JETT-VDP\image007.jpg'), 0, 486, 72/133 );
			 
			$page->mediabox(865, 612);
 my $gfx = $page->gfx;
        $gfx->image($pdf->image_jpeg('\JETT-VDP\image008.jpg'), 30, 5, 72/133);
	
		 my $gfx = $page->gfx;
        $gfx->image($pdf->image_png($A3.$B1.'.png'), 30, 250, 72/150);

			  $page->mediabox(865, 612);	
	my $gfx = $page->gfx;
        $gfx->image($pdf->image_jpeg($A4.'.jpg'), 633, 520, 72/133);
		  

    # Add a built-in font to the PDF
    $font = $pdf->corefont('arial');

$font = $pdf->ttfont('/JETT-VDP/Custcode.ttf');
 $text = $page->text();
$text->font($font, 11);
$text->translate(150, 430);
$text->text('(');
$text->text($B1);
$text->text(')');

$font = $pdf->ttfont('/JETT-VDP/VeraMono.ttf');
  
 
$text = $page->text();
$text->font($font, 11);
$text->translate(150, 410);
$text->text($A5);
$text->text(' ');
$text->text($A6);
$text->text(' ');
$text->text($A7);

  
 $text = $page->text();
$text->font($font, 11);
$text->translate(150, 400);
$text->text($C4);
 $text = $page->text();
$text->font($font, 11);
$text->translate(150, 390);
$text->text($A8);### CLEAR   $text = $page->text();
  $text->font($font, 11);
 $text->translate(150, 380);
$text->text($A9);
   $text = $page->text();
  $text->font($font, 11);
 $text->translate(150, 370);
$text->text($B1);

############################################## CLEAR
  
 } 

  

    # Save the PDF
    $pdf->saveas('/JETT-VDP/USA-Movie-C5.pdf');