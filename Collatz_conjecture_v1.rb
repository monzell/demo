#!/usr/bin/env ruby

def calculate(num,count)

  count = count + 1
  if num == 1
    return num,count
  elsif num % 2 == 0
    calculate(num / 2, count)
  else
    calculate( ( 3 * num ) + 1, count)
  end
end

term_hash = Hash.new
sequence_results = Hash.new
count=0
sequence = 1000000

1.upto(sequence) do | n |
  count = 0
  num,count_max = calculate(n,count)
  sequence_results[count_max] = n
end

longest_term = 0
sequence_results.each do | k, v |
  if k > longest_term
    longest_term = k
  end
end

puts "The starting number that has the longest chain of terms is #{sequence_results[longest_term]}"
