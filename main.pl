#stages to code
#Read a file at command prompt and read each line 
# You must take each line and determine if that line is a palindrome,
#if it is, then you will print `AY`
#else you will print `NAY`. 
#print a `|`, then the line sorted in reverse lexical order without the white space characters.
use strict;
use warnings;

my $filename = $ARGV[0]; #first arguement passed is the filename
open(INPUT_FILE, $filename) #open the filename
or die "No!!! Could not open $filename, please try again fellow wizard."; 

while(my $row = <INPUT_FILE>) {  #go through the file and $row saves the input line

    my @lineArr = split //, $row; #split line of characters into arrays
    my @lineArr2 = reverse(@lineArr); #reverse the line of characters
    my $ArrSize = scalar(@lineArr)-1; #find size of the array
    my $pali_check = 0;
    for(my $i=0; $i<$ArrSize-1; $i++) #do palindrone check
    {
	if(uc(@lineArr[$i]) ne uc(@lineArr2[$i+1]))
	{
	    $pali_check = 1;
	}
	#print "@lineArr[$i] | @lineArr2[$i+1] | $pali_check";
    }
    
     if($pali_check==0) #checks palindrone
     {print "AY  | ";
     }
     else {
	 print "NAY | ";
    }    
    my @lineArrSort = reverse sort @lineArr;
    my $final_print = join("",@lineArrSort);
    print "$final_print";
}
print "done\n";
close $filename; #close file
