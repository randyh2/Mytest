Mordor Challenge
================

**HALT! You have reached the Gates of Mordor! Who goes there?!?** 

A naive-ish n00b? Perhaps a wizard in training? Or we could be in the presence of a rare Code-Fu Master. Your name was selected by the magical Goblet of ~~Fire~~<sup>tm</sup> Applicants so there must be *something* about you...

The first test of your meddle will be to recreate the mysterious Sage of FizzBuzz. This will gain you access to the Sphinx of Wordplay who, if you can write a program to defeat her never ending wit, will grant you passage back to our land and an audience with the High Council of planet Dev Team to continue on to the final stage of the Trials.

In order to submit your application for entry you must:

1. [Fork](https://help.github.com/articles/fork-a-repo/) this repository.  
2. Develop your solutions.
3. Write a [Markdown](https://help.github.com/articles/github-flavored-markdown/) 
   formatted how-to so that we can run all of your solutions.
4. Commit (`git commit`) and Push (`git push`) your code.
5. Submit your code to us via a [Pull Request](https://help.github.com/articles/using-pull-requests/).

Trial #1: The Sage of Fizz Buzz
------------------------
The only human to pass through these gates is the famed Sage of Fizz Buzz. Using a tool we lovingly call [Haskell](https://www.haskell.org/haskellwiki/Haskell) during this, the era of Functional Programming, you must recreate the magic contained within this sage. Our world is almost completely comprised of JavaScript and FP is the key to properly utilizing its strengths. This paradigm is what allowed the sage to pass unharmed.

### Mission Breakdown
The gate throws 3 numbers at any potential entrant. Based on the patterns below your creation will need take any 3 numbers and match the necessary output. Thus you will write a script that reads 3 [command line arguments](https://en.wikipedia.org/wiki/Command-line_interface#Arguments):

1. ***first divisor*** - This is the first divisor you will check against the 
													dividend.
2. ***second divisor*** - This is the second divisor you will check against the 
													dividend.
3. ***upper bound*** - This is the maximum dividend.

You script will cycle through the range of `[0..<upper bound>]` and print one of the following strings:

* If divisible by both the `first divisor` and `second divisor` print `FizzBuzz`
* If divisible by just the `first divisor` then print `Fizz`
* If divisible by just the `second divisor` then print `Buzz`
* If not divisible by either divisor then print the dividend itself.

Here is some the sample output for the arguments `2 4 6`:

```bash
1
Fizz
3
FizzBuzz
5
Fizz
```

Trial #2: The Sphinx
-------------------------------------------------
For this trial, you will need to get past The Sphinx using string manipulation. In order to beat The Sphinx you must understand palindromes, as that is only what she truly speaks. Your creation will need to be able to tell what are truly her words or not by returning if a string is a palindrome. Then you must quickly send each string back to her in reverse lexicographical order to confuse her enough to best her at her own deadly game. 

In order to thoroughly confound the Sphinx you must build your creation in two different languages.

One interpreted, dynamically typed:

* [Perl](http://www.perl.org)
* [Python](https://www.python.org)

And one compiled, statically typed:

* [Rust](http://www.rust-lang.org)
* [OCaml] (https://ocaml.org/)

To impress the council, and speed your induction, utilize one or more of the following:

* [Swift] (http://www.apple.com/swift/)
* [Erlang] (http://learnyousomeerlang.com/content)
* [LOLCODE] (http://lolcode.org/)
* [Shakespeare] (http://shakespearelang.sourceforge.net/)

### Mission Breakdown
You will take in a text file that is given to you as a 
[command line argument](https://en.wikipedia.org/wiki/Command-line_interface#Arguments).  That text file will be composed of several lines of
strings.  You must take each line and determine if that line is a palindrome,
if it is, then you will print `YES`, else you will print `NO`.  Then you will 
print a `|`, then the line sorted in reverse lexical order without the white 
space characters.

Example Input:
```bash
12344321
00982343
pizza
aibohphobia
Influential Publishers
Xanax
```

Example Output:
```bash
YES | 44332211
NO | 98433200
NO | zzpia
YES | pooiihhbbaa
NO | uutssrnnllliihfeebaPI
YES | xnaaX
```
