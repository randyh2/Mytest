//Step 1:open file from command line
//Step 2:read line by line until empty
//Step 3:do palindrone check
//Step 4: print the results
//use std::error::Error;
use std::fs::File;
//use std::io::prelude::*;
use std::path::Path;
use std::env;
use std::io::BufReader;
//use std::io::Write;
use std::io::BufRead;
use std::io;
use std::io::BufWriter;
use std::string::String;
use std::ascii::AsciiExt;



fn main()
{
   let args: Vec<String> = env::args().collect(); //get command arguments args[1] is the filename

   let path = Path::new(&args[1]);

   let file = File::open(&path).unwrap(); //open file
   
   let reader = BufReader::new(&file);
   let writer = BufWriter::new(io::stdout());
   
   for(num,line) in reader.lines().enumerate()
   { //read each line 
     let l = line.unwrap();
     let mut chars: Vec<char> = l.chars().collect(); //convert string to vecotrs
   

	//Time to figure out if string is a plindrone
	//To do this, analyze the first and last char and then increment to get close to the middle
   	let mut palin = 0;
   	let mut i=0; //counter
	let mut end = chars.len();
	let elength = end%2;
	let blank= ' ';
	loop
   	{
		end-=1; //decrement
		let mut f1 = chars[i]; //beginning of the string
		let mut f2 = chars[end]; //ending of the string
		if f1 == blank //need to ignore empty space in the string
		{
			i+=1;
			f1 = chars[i];
		}
		if f2 == blank //need to ignore empty space too
		{
			end-=1;
			f2 = chars[end];
		}
      		if palin == 0 
      		{
			if f1.eq_ignore_ascii_case(&f2) //checking the characters
			{
				palin=0;
				
			}
			else //characters don't match, end checking
			{
			palin=1;
			break;
			}
		}
		let g = end-i;
		if elength == 0 //length is even
		   {
			if g == 1
			{
			break; //end loop
			}
		   }
		else //length is odd
		{
			if g == 2
			{	
			break; //end loop
			}
		}
		
		i+=1; //increment
	
   	}
	


   	//Time to sort the chars into reverse order and print
   	chars.sort(); //sort vectors
   	let mut string = String::new();
   	for c in chars
       	{  //create the new string
       	     string.push(c);
   	}
	if palin == 1
	{
	println!("NAY | {}",string.chars().rev().collect::<String>());
	}
	else
	{
	println!("AY  | {}",string.chars().rev().collect::<String>());
	}
   	
   
   
   }

}



