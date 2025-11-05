# Given a string, count how many times each character appears. 

# this will count capital and lower cases letters separately and include the space " "
def char_count(str) 
  hash = Hash.new(0)
  str.each_char { |ch| hash[ch] += 1  }
  
  hash
  
end

puts char_count("hello")
# {"h"=>1, "e"=>1, "l"=>2, "o"=>1}


# to skip the space and make it case-insensitive 
def char_count_v2(str)
  hash = Hash.new(0)
  
  str.downcase.each_char do |ch|
    next if ch == ' '
    hash[ch] += 1 
  end
  
  hash
end

puts char_count_v2("Hello World")
# {"h"=>1, "e"=>1, "l"=>3, "o"=>2, "w"=>1, "r"=>1, "d"=>1}
