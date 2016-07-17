# Collatz Conjecture Demonstration

#
This holds some code that demonstrate [Collatz conjecture](https://en.wikipedia.org/wiki/Collatz_conjecture).

## Version 1

Version 1 is found in Collatz_conjecture_v1.rb. The code uses recursion to count the number of terms for each number. Afterwards, the number as well as total number of terms for that number is inserted into a ruby hash; at that point, we iterate to find the number with the greatest number of terms.

## Version 2

Version 2 is found in Collatz_conjecture_v2.rb. Like version 1, the code uses recursion to count the number of terms for each number. The difference is that we do not save the list into a hash, but rather just do the comparison right off the bat and just save the variable that contains the value of the greatest number of terms. This was done to determine whether is a performance difference by not having to iterate through a hash.

## Output

Running through the code suggests that omitting the hash makes a difference:

```
stardust:Collatz_conjecture rilindo$ time ./Collatz_conjecture_v1.rb
The starting number that has the longest chain of terms is 837799

real	0m19.185s
user	0m19.060s
sys	0m0.057s
stardust:Collatz_conjecture rilindo$ time ./Collatz_conjecture_v2.rb
The starting number that has the longest chain of terms is 837799

real	0m18.714s
user	0m18.676s
sys	0m0.029s
stardust:Collatz_conjecture rilindo$ 
```
