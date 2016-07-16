#!/usr/bin/env ruby

def calculate(num,count)

  count = count + 1
  if num == 1
    return count
  elsif num % 2 == 0
    calculate(num / 2, count)
  else
    calculate( ( 3 * num ) + 1, count)
  end
end

sequence = 1000000
longest_term = 0
term_term = 0
1.upto(sequence) do | n |
  count = 0
  count_max = calculate(n,count)
  if count_max > longest_term
    longest_term = count_max
    term_term = n
  end
end

puts "The starting number that has the longest chain of terms is #{term_term}"
