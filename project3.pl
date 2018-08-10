


my $left = "abc";
my $right = "def";
my @keys;



print "Enter an even string to begen encryption \n";
my $input = <>;







my $mycount = length $input;
	$mycount = $mycount - 1;
	#print $mycount;

if ( $mycount % 2 == 0 ){
print "Your string is even, continue.......\n";
	} else {
		print "Invalid String, string is not even\n";
	exit;
}

$othercount = $mycount;

$othercount = $othercount / 2;
#---------split--------------------------------
my @string = split //, $input;

@myleft = @string;
@myright = splice @myleft, scalar(@string)/2;

my $left=join('',@myleft);
my $right=join('',@myright);
$othercount= $othercount - 1;



#------------------------------------------------

print "Now enter the number of round of encryption \n";
my $rounds = <>;



#encryption 
		for (my $count=0; $count <= $rounds; $count++){
			@right = unpack("C*", $right); 
			@left = unpack("C*", $left); 


				for (my $count=0; $count <= $othercount; $count++){
						my $random_number = int(rand(10));
						@loop[$count] = @right[$count] + $random_number;
				}

				for (my $count=0; $count <=$othercount; $count++){
						@temp[$count] = @loop[$count] ^ @left[$count];

				}

		@left = @temp;

		$left = pack("C*", @left);
				$temp = $left;
				$left = $right;
				$right = $temp;	
						print "Level of encryption  at round:", $count, "\n";
						print $left, $right, "\n";

			my $scalar = join( ':' , @loop ) ;
		push @array, $scalar;

	}

	print "\n\nenter any key to decrypt the string: ";
	my $none = <>;

#-----------------------------------------
	#decript
			$i= $rounds;
				for (my $control=0; $control <= $rounds; $control++){

					$temp = $right;
					$right = $left;
					$left = $temp;	
						$see = @array[$i];
						my @words = split /:/, $see;
						@left = unpack("C*", $left); 
			
			for (my $count=0; $count <=2; $count++){
					@newtemp[$count] =  @words[$count] ^ @left[$count];
			}

					$left = pack("C*", @newtemp); 
				print "Level of decription at round:", $i, "\n";
			print $left, $right, "\n";
		$i = $i - 1;
	};



