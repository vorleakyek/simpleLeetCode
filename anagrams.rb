# check if two strings are anagrams of each others 
# check the length and the frequency of each character 


def anagrams?(str1, str2)
  
  return false if str1.length != str2.length 
  
  s1_hash = Hash.new(0) 
  s2_hash = Hash.new(0)
  
  str1.each_char { |ch| s1_hash[ch] += 1}
  str2.each_char { |ch| s2_hash[ch] += 1}
  
  s1_hash == s2_hash
  
end


puts anagrams?("silent", "listen")  # => true
puts anagrams?("hello", "world")    # => false


# More effiecient 

def anagrams?(str1, str2)
  return false if str1.length != str2.length

  count = Hash.new(0)

  str1.each_char { |ch| count[ch] += 1 }
  str2.each_char { |ch| count[ch] -= 1 }

  count.values.all?(&:zero?)
end
