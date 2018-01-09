# jett (simplified version)
Automated VDP data 2 PDF document system... creates variable documents automatically (OTF), all documents any shape and size. 
Perl based Variable Document Printing, Jett offers the ability to automate your company's on demand printing documents.

This was the first version I created in early 2015... and have simplified further it, including  simplifying the SQL table structure and removing the relationships, so it can be easily used as a blank canvase for people with external VDP requirements.

The 2018 version has a C# UI and Node.JS network system, which is deeply reliant on each other.

# Runs on MongoDB, MySQL and SQL Server.
The version currently is for SQL Server but has ran in MongoDB and MySQL, over the next view months I will release the MongoDB and MySQL flavours.

# CPAN Modules Dependencies
You will have to install CPAN modules including 2d barcode matrix... you can find the modules in the source code or if you are feeling lazy during runtime debugging 

# Create.SQL
This will create the data structure, you will need to create user and update source files accordingly 

# Local Network Paths
Local network paths will need to be edited as required
TTFs will need to be stored on local, they are set to embed 

# The C# Partner UI is not currently being deployed to Git
# The C# Client UI is not currently being deployed to Git
# The Node.JS partner world wide processor is not currently being deployed to Git
