
my $left = "abc";
my $right = "def";
my @keys;




#encription
		for (my $count=0; $count <=2; $count++){
			@right = unpack("C*", $right); 
			@left = unpack("C*", $left); 


				for (my $count=0; $count <=2; $count++){
						my $random_number = int(rand(10));
						@loop[$count] = @right[$count] + $random_number;
				}

				for (my $count=0; $count <=2; $count++){
						@temp[$count] = @loop[$count] ^ @left[$count];

				}

		@left = @temp;

		$left = pack("C*", @left);
				$temp = $left;
				$left = $right;
				$right = $temp;	
						print "Level of encription at round:", $count, "\n";
						print $left, $right, "\n";

			my $scalar = join( ':' , @loop ) ;
		push @array, $scalar;

	}

	print "\n\nenter any key to decript the string";
	my $none = <>;

#-----------------------------------------
	#decript
			$i= 2;
				for (my $control=0; $control <=2; $control++){

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



