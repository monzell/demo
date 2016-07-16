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

sequence_results = Hash.new
sequence = 1000000

1.upto(sequence) do | n |
  count = 0
  count_max = calculate(n,count)
  sequence_results[count_max] = n
end

longest_term = 0
count = 0
sequence_results.each do | count_max, term |
  if count_max > count
    count = count_max
  end
end

puts "The starting number that has the longest chain of terms is #{sequence_results[count]}"
