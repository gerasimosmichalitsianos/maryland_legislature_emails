###### GENERAL DESCRIPTION: Maryland Legislature Emails

    It is the right of the people of any U.S. State, territory, province, etc. to petition their elected
    representatives for a redress of grievances. One way to do this is through email.
    
    This simple Perl program parses the two websites containing the emails for members of the 
    Maryland Senate and the Maryland House of Delegates, dumping these to the terminal (console) 
    or file. The output is comma-delimited. By passing in either "file" or "console" at the command 
    line, the user may specify to have those emails written to the console or to a simple text file. 
    The output can simply be copied and pasted into common email services (e.g. gmail) to email 
    all the members of the legislature at-once.
    
    It is expected you will have Perl 5 installed, and that this program will be run in a Linux
    or UNIX-like command-line environment. Almost all modern Linux distributions come with Perl 5
    built-in.
    
###### Perl VERSION

    Supports Perl 5.
    
###### INSTALLATION

    Download the Perl source file GetEmails.pl.

###### EXAMPLE USAGE

    $ chmod +x GetEmails.pl
    $ ./GetEmails.pl --console
    gabriel.acevero@house.state.md.us,christopher.adams@house.state.md.us, ...
    
    ...
    
    ...
    
    By using the "file" flag, the emails are dumped to a text file 
    legislature_emails.txt:
    
    $ ./GetEmails.pl --file

###### @AUTHOR:

    Gerasimos Michalitsianos
    gerasimosmichalitsianos@gmail.com
    8 April 2021
