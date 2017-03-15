{-
Hello Reviewer!
This program assumes user will only input 3 command arguments, if more than 3 the program will take the first 3 command arguments for input.

Step 1: Read 3 numbers from command prompt
Step 2: Do a loop and do the checks with print
Rule 1: If divisible by both the `first divisor` and `second divisor` print `FizzBuzz`
Rule 2: If divisible by just the `first divisor` then print `Fizz`
Rule 3: If divisible by just the `second divisor` then print `Buzz`
Rule 4: If not divisible by either divisor then print the dividend itself.
-}

import System.Environment
import Data.List

repeatNTimes w e r 0 = return()
repeatNTimes w e r n =  {- note: w=First Divisor, e=SecDevisor, r=startingfrom1, n=upperbound-}
 do
  if r `mod` w == 0 && r `mod` e == 0 then putStrLn "FizzBuzz" --Rule 1
  else if r `mod` w == 0 && r `mod` e /= 0 then putStrLn "Fizz" --Rule 2
  else if r `mod` w /= 0 && r `mod` e == 0 then putStrLn "Buzz" --Rule 3
  else print r --Rule 4
  --putStrLn "Sup"
  repeatNTimes w e (r+1) (n-1)
  
main=do

  (fd:sd:ub:rest) <- getArgs --get the numbers from command argument

  let x = read fd :: Integer --convert the numbers to int
  let y = read sd :: Integer
  let z = read ub :: Integer
  let m = 1;

  --if x == 1 then putStrLn "doom" else putStrLn "Error"
  repeatNTimes x y m z --repeat loop