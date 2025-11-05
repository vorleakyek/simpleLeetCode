# Given numbers 1..n with one missing, find the missing one.

def missing_number(arr)
  n = arr.length + 1 
  expected_sum = n * (n + 1)/2 
  sum = arr.sum
  expected_sum - sum
end 

puts missing_number([1, 2, 4, 5, 6]) # => 3
