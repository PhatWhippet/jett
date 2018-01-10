# jett (simplified version)
Automated VDP data 2 PDF document system... creates variable documents automatically (OTF), all documents any shape and size. 
Perl based Variable Document Printing, Jett offers the ability to automate your company's on print demand documents.

# Background
This was the first version I created in early 2015 and has been diluted from part of a much larger software project based on Node.JS, C# and Perl... and has been recently simplified further, including  simplifying the SQL table structure and removing the original architecture, so it can be easily used as a blank canvas for people with external VDP requirements.

Many clients liked this solution as it didn't tie them to a CRM or other "off the shelf" solutions that may become locked in to antiquated or surplus to requirement solutions.


##### Set Up Begins

:: Install Strawberry Perl *** see CPAN Modules Dependencies ***

:: In SSMS run (CREATE.SQL)

:: Put Folders in top lever C drive

:: Set up SQL user rights 

:: Edit *.pl files with IP Address - Username - Password - port

:: Set up ODBC

# CPAN Modules Dependencies
You will have to install CPAN modules including 2d barcode matrix... you can find the modules in the source code or if you are feeling lazy install during runtime.

# Create.SQL
This will create the data structure, you will need to create user and update source files accordingly 

# Runs on MongoDB, MySQL and SQL Server.
The version currently is for SQL Server but has ran in MongoDB and MySQL, over the next view months I will release the MongoDB and MySQL flavours.

# Local Network Paths
Local network paths will need to be edited as required
TTFs will need to be stored on local, they are set to embed 

##### Set Up Ends

# The C# Partner UI is not currently being deployed to Git
# The C# Client UI is not currently being deployed to Git
# The Node.JS partner world wide processor is not currently being deployed to Git
