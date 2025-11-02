# print the result 

def fizzBuzz (n)
  for i in 1..n do
    if ((i % 3 == 0) && (i % 5 == 0))
      puts "FizzBuzz"
    elsif (i % 5 == 0)
      puts "Buzz"
    elsif (i % 3 == 0)
      puts "Fizz"
    else 
      puts i
    end
  end
end

# fizzBuzz(17)


# return an array 

def fizzBuzzArray(n)
  result = []
  (1..n).each do |i|
    if i % 3 == 0 && i % 5 == 0
      result << "FizzBuzz"
    elsif i % 3 == 0
      result << "Fizz"
    elsif i % 5 == 0 
      result << "Buzz"
    else 
      result << i
    end  
  end
  puts result
  result
end

# fizzBuzzArray(17)


# ternary operator 
def fizzBuzzTernary(n) 
  (1..n).each do |i|
    puts i % 15 == 0 ? "FizzBuzz" : i % 3 == 0 ? "Fizz" : i % 5 == 0 ? "Buzz" : i
  end
end

fizzBuzzTernary(15)
