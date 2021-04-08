#!/usr/bin/perl
=head1 NAME
  GetEmails.pl 
=head1 DESCRIPTION
  Get emails from the web pages of the 
  Maryland legislature.
=head1 AUTHOR
  Gerasimos Michalitsianos
=head1 REVISION
  8 April 2021
=head1 METHODS
  Uses Perl programming language to parse
  two Maryland Legislature Gov. websites for email addresses of members. 
  Dumps them out to text file or to terminal or console.
=cut

use 5.013;
use strict;
use warnings;
use LWP::Simple qw(get); 

use constant DEBUG => 0;
use constant URL_HOUSE => "https://msa.maryland.gov/msa/mdmanual/06hse/html/hsee.html";
use constant URL_SENATE => "https://msa.maryland.gov/msa/mdmanual/05sen/html/sene.html";

BEGIN {
  if (DEBUG) {
    require Data::Dumper;
    Data::Dumper->import( qw (Dumper));
  } else {
    sub Dumper {};
  }
}

# show usage message if user does not pass in 
# one of following flags: 
#   --console
#   --file
# -------------------------------------------
die usage () if ( @ARGV<1 );

eval {
  main( @ARGV );
} or do {
  my $ErrMsg = "error: $@\n";
  exit;
};

sub main {

  my $IOMode = shift;
  print STDOUT "URL for Maryland House of Delegates: 
    ${ \URL_HOUSE } \n" if DEBUG;
  print STDOUT "URL for Maryland Senate: 
    ${ \URL_SENATE } \n\n" if DEBUG;
  print STDOUT "I/O mode: $IOMode\n" if DEBUG;

  # de-reference output comma-separated strings containing the MD Legislature
  # House and Senate Emails
  # -------------------------------------------------------------------------
  my $MDHouseEmails  = ${ &ReadEmails( URL_HOUSE ) };
  my $MDSenateEmails = ${ &ReadEmails( URL_SENATE ) };
 
  if( $IOMode eq "--file" ) { # write emails to text file

    # output text file name to hold emails
    # ------------------------------------
    my $OutName = "legislature_emails.txt";
    
    # if file already exists, remove it in current directory
    # ------------------------------------------------------
    if( -e $OutName ) {
      unlink $OutName;
    }

    # write the output email string, comma-separated, to 
    # the text file
    # ---------------------------------------------------
    open( FH,'>',$OutName ) or die $!;
    print FH join ",",$MDHouseEmails,$MDSenateEmails;
    close(FH);

  } else { # write emails to console or terminal
    print STDOUT join ",",$MDHouseEmails,$MDSenateEmails;
  } 
  return 1;
}

# ----------------------------------------------
# function to parse the HTML referred to at URL
# and return a comma-separated string of emails
# for that address
# ---------------------------------------------
sub ReadEmails {
  # read url into subroutine/function
  my $url = shift;

  # read HTML contents of URL
  # -------------------------
  my $html = get $url;

  # parse emails out of the HTML.
  # First we split along newline characters
  # to create a list or array of strings
  # for each HTML line in the page
  # ----------------------------------------
  my @EmailSpl = split "\n", $html;
  my @Emails=();

  foreach my $HtmlLine (@EmailSpl) { # loop through each HTML line
    
    # skip HTML line if it does not contain an MD Senate/House email	  
    # --------------------------------------------------------------
    next unless ( $HtmlLine =~ /\<ul\>(.*)mailto:/ );

    # get the email within the line
    # -----------------------------
    my $MDGovEmail = ( split '"',$HtmlLine )[1];
    $MDGovEmail =~ s/mailto://g;
    chomp( $MDGovEmail );

    # append list of emails
    # ---------------------
    push @Emails,$MDGovEmail;
  }

  # return string reference to comma-separated string
  # holding emails at the HTML page for $url
  # -------------------------------------------------
  my $AllEmailStr = join ",",@Emails;
  return \$AllEmailStr;
}

# -----------------------------------------
# function to show usage message at console
# -----------------------------------------
sub usage {
  return <<EOT;
  Usage: $0 {file|console},
    --file    : dump emails to file.
    --console : dump emails to terminal or console.
EOT
}
