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

    Perl 5.
    
###### INSTALLATION

    Download the Perl source file GetEmails.pl.

###### EXAMPLE USAGE

    Adjust the path shebang to the full path of your Perl
    interpreter in the first line of GetEmails.pl (for my Linux
    system it was /usr/bin/perl). Then:

    $ chmod +x GetEmails.pl
    $ ./GetEmails.pl --console
    gabriel.acevero@house.state.md.us,christopher.adams@house.state.md.us, ...
    
    ...
    
    ...
    
    or 
    $ perl GetEmails.pl --console
    
    By using the "file" flag, the emails are dumped to a text file 
    legislature_emails.txt:
    
    $ ./GetEmails.pl --file
    
###### OUTPUT

gabriel.acevero@house.state.md.us,christopher.adams@house.state.md.us,marlon.amprey@house.state.md.us,curt.anderson@house.state.md.us,carl.anderton@house.state.md.us,steven.arentz@house.state.md.us,lauren.arikan@house.state.md.us,dalya.attar@house.state.md.us,vanessa.atterbeary@house.state.md.us,heather.bagnall@house.state.md.us,ben.barnes@house.state.md.us,darryl.barnes@house.state.md.us,erek.barron@house.state.md.us,sandy.bartlett@house.state.md.us,kumar.barve@house.state.md.us,wendell.beitzel@house.state.md.us,lisa.belcastro@house.state.md.us,harry.bhandari@house.state.md.us,joseph.boteler@house.state.md.us,regina.boyce@house.state.md.us,chanel.branch@house.state.md.us,talmadge.branch@house.state.md.us,tony.bridges@house.state.md.us,benjamin.brooks@house.state.md.us,jason.buckel@house.state.md.us,jon.cardin@house.state.md.us,ned.carey@house.state.md.us,alfred.carr@house.state.md.us,mark.chang@house.state.md.us,lorig.charkoudian@house.state.md.us,nick.charles@house.state.md.us,brian.chisholm@house.state.md.us,barrie.ciliberti@house.state.md.us,jerry.clark@house.state.md.us,luke.clippinger@house.state.md.us,frank.conaway@house.state.md.us,dan.cox@house.state.md.us,brian.crosby@house.state.md.us,charlotte.crutchfield@house.state.md.us,bonnie.cullison@house.state.md.us,debra.davis@house.state.md.us,dereck.davis@house.state.md.us,kathleen.dumais@house.state.md.us,eric.ebersole@house.state.md.us,jessica.feldmark@house.state.md.us,diana.fennell@house.state.md.us,mark.fisher@house.state.md.us,wanika.fisher@house.state.md.us,cathi.forbes@house.state.md.us,david.fraser.hidalgo@house.state.md.us,jeff.ghrist@house.state.md.us,jim.gilchrist@house.state.md.us,robin.grammer@house.state.md.us,mike.griffith@house.state.md.us,michele.guyton@house.state.md.us,andreafletcher.harrison@house.state.md.us,wayne.hartman@house.state.md.us,antonio.hayes@house.state.md.us,keith.haynes@house.state.md.us,anne.healey@house.state.md.us,shaneka.henson@house.state.md.us,terri.hill@house.state.md.us,marvin.holmes@house.state.md.us,kevin.hornberger@house.state.md.us,seth.howard@house.state.md.us,rick.impallaria@house.state.md.us,julian.ivey@house.state.md.us,carl.jackson@house.state.md.us,jay.jacobs@house.state.md.us,jay.jalisi@house.state.md.us,steve.johnson@house.state.md.us,adrienne.jones@house.state.md.us,dana.jones@house.state.md.us,rachel.jones@house.state.md.us,anne.kaiser@house.state.md.us,ariana.kelly@house.state.md.us,ken.kerr@house.state.md.us,trent.kittleman@house.state.md.us,nicholaus.kipke@house.state.md.us,marc.korman@house.state.md.us,susan.krebs@house.state.md.us,carol.krimm@house.state.md.us,mary.lehman@house.state.md.us,jazz.lewis@house.state.md.us,robbyn.lewis@house.state.md.us,brooke.lierman@house.state.md.us,maryann.lisanti@house.state.md.us,bob.long@house.state.md.us,lesley.lopez@house.state.md.us,sara.love@house.state.md.us,eric.luedtke@house.state.md.us,michael.malone@house.state.md.us,nino.mangione@house.state.md.us,johnny.mautz@house.state.md.us,susan.mccomas@house.state.md.us,maggie.mcintosh@house.state.md.us,mike.mckay@house.state.md.us,ric.metzgar@house.state.md.us,david.moon@house.state.md.us,matthew.morgan@house.state.md.us,reid.novotny@house.state.md.us,charles.otto@house.state.md.us,julie.palakovichcarr@house.state.md.us,neil.parrott@house.state.md.us,edith.patterson@house.state.md.us,joseline.pena.melnyk@house.state.md.us,shane.pendergrass@house.state.md.us,jesse.pippy@house.state.md.us,susie.proctor@house.state.md.us,lily.qi@house.state.md.us,pam.queen@house.state.md.us,teresa.reilly@house.state.md.us,kirill.reznik@house.state.md.us,mike.rogers@house.state.md.us,april.rose@house.state.md.us,samuel.rosenberg@house.state.md.us,sheila.ruth@house.state.md.us,sid.saab@house.state.md.us,sheree.sample.hughes@house.state.md.us,emily.shetty@house.state.md.us,haven.shoemaker@house.state.md.us,stephanie.smith@house.state.md.us,jared.solomon@house.state.md.us,dana.stein@house.state.md.us,vaughn.stewart@house.state.md.us,charles.sydnor@house.state.md.us,kathy.szeliga@house.state.md.us,jen.terrasa@house.state.md.us,brenda.thiam@house.state.md.us,veronica.turner@house.state.md.us,kris.valderrama@house.state.md.us,geraldine.valentino@house.state.md.us,jay.walker@house.state.md.us,courtney.watson@house.state.md.us,ron.watson@house.state.md.us,melissa.wells@house.state.md.us,jheanelle.wilkins@house.state.md.us,nicole.williams@house.state.md.us,ct.wilson@house.state.md.us,william.wivell@house.state.md.us,karen.young@house.state.md.us,pat.young@house.state.md.us,joanne.benson@senate.state.md.us,marybeth.carozza@senate.state.md.us,jill.carter@senate.state.md.us,bob.cassilly@senate.state.md.us,paul.corderman@senate.state.md.us,adelaide.eckardt@senate.state.md.us,george.edwards@senate.state.md.us,sarah.elfreth@senate.state.md.us,arthur.ellis@senate.state.md.us,brian.feldman@senate.state.md.us,bill.ferguson@senate.state.md.us,jason.gallion@senate.state.md.us,melony.griffith@senate.state.md.us,guy.guzzone@senate.state.md.us,antonio.hayes@senate.state.md.us,steve.hershey@senate.state.md.us,katiefry.hester@senate.state.md.us,shelly.hettleman@senate.state.md.us,michael.hough@senate.state.md.us,michael.jackson@senate.state.md.us,jb.jennings@senate.state.md.us,cheryl.kagan@senate.state.md.us,delores.kelley@senate.state.md.us,nancy.king@senate.state.md.us,katherine.klausmeier@senate.state.md.us,ben.kramer@senate.state.md.us,clarence.lam@senate.state.md.us,susan.lee@senate.state.md.us,cory.mccray@senate.state.md.us,obie.patterson@senate.state.md.us,douglas.peters@senate.state.md.us,paul.pinsky@senate.state.md.us,justin.ready@senate.state.md.us,edward.reilly@senate.state.md.us,jim.rosapepe@senate.state.md.us,johnnyray.salling@senate.state.md.us,bryan.simonaire@senate.state.md.us,will.smith@senate.state.md.us,charles.sydnor@senate.state.md.us,jeff.waldstreicher@senate.state.md.us,mary.washington@senate.state.md.us,chris.west@senate.state.md.us,ronald.young@senate.state.md.us,craig.zucker@senate.state.md.us

###### @AUTHOR:

    Gerasimos Michalitsianos
    lakithra@protonmail.com
    8 April 2021
