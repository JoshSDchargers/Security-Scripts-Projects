#!/usr/bin/perl

#Joshua Aguirre
#Project 2
#Comp 424
#date
 
use POSIX;
use Data::Dumper qw(Dumper);



my $test = "testone1";
my $testone ="seem";
my $testtwo = "ging";
my $key ="zdsd";
my @ascii = unpack("C*", $testtwo);
my @asciikey = unpack("C*", $key);



print "Enter Even string to encrip:\n\n";
$test = <>;

my @words = split //, $test;
print @words[0];
print "\n\n\n";

print scalar @words; 
my $contorl = scalar @words; 
print "\n\n\n";
print $contorl, "\n\n\n";

print "\n\n\n\n";
##print "Enter a (sub)Key";
##$key = <>;
print "\n\n";
print $test;

#//----------------------------------------------------------------

@newtest = loop();
print "\n\n\n@newtest\n ";
my $loopstring = backtochar();
print "\n\n$loopstring";
combine($loopstring);

#//----------------------------------------------------------------
sub loop {
my $i=0;
my @newtest = @ascii;
my @crip;
print "\n@newtest[0]\n\n";
print "\n@ascii\n";
print "@asciikey\n\n";
print "---------------------------\n";

	for (my $count=0; $count <=3; $count++){
		@crip[$count] = (@newtest[$count] ^ @asciikey[$count]);
				print @crip[$count], "\n";
				};
		print $value;
		
return @crip;				
		};
	


sub backtochar {
print "\n\n@newtest\n\n\n";
my $output = pack("C*", @newtest); 
return $output;
}

sub combine {
 $loopstring .= $testone;
print "\n\nfinal string\n";
print "$loopstring";
}


sub decrip (



);


