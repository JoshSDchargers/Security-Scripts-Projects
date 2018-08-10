#!/usr/bin/perl

#Joshua Aguirre
#Project 2
#Comp 424
#date
 
use POSIX;


my $test = "testone1";
my $testone ="1234";
my $testtwo = "abcd";
my $key ="abcd";
my @ascii = unpack("C*", $testtwo);
my @asciikey = unpack("C*", $key);


#//----------------------------------------------------------------

@newtest = loop();
print "\n\n\n@newtest\n ";
my $loopstring = backtochar();
print "\n\n$loopstring";
combine($loopstring);
#my $testing = "dsfsfad";
#binary(testing);
#//----------------------------------------------------------------
sub loop {
my $i=0;
my $value=0;
my @newtest = @ascii;
print "\n@newtest[0]\n\n";

print "\n@ascii\n";
print "@asciikey\n\n";
print "---------------------------\n";

for (my $countcontrol=0; $countcontrol <=3; $countcontrol++){
	for (my $count=0; $count <=3; $count++){
		$value = (@newtest[$count] + @asciikey[$count])/2;
		$value = floor($value);
			@newtest[$count] = $value;
			print "@newtest[$count]\n";		
				};
			};
return @newtest;				
		};
	
	
sub xor {
return "needs works";
}

sub binary {
chomp($testing);

my $reminder;
my $result;

while ($value >= 1)
{
    $reminder = $value % 2;      
    $result = $reminder . $result;     
    $value = $value / 2;     
}
print "Binary number Output = ", $result, "\n";

};

sub backtochar {
print "\n\n@newtest\n\n\n";
my $output = pack("C*", @newtest); 
print $output;
return $output;
}

sub combine {
 $loopstring .= $testone;
print "\n\nfinal string\n";
print "$loopstring";
}



