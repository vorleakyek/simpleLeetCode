def split(s, delimiter)
  return [] if s.empty?

  result = []
  temp = ''

  s.each_char do |char|
    if char == delimiter
      result << temp
      temp = ''
    else
      temp << char
    end
  end

  result << temp unless temp.empty?
  print result
  result
end


# def split(s,c)
#   if s == '' 
#     return []
#   end

#   result = []
#   tempt = ''
#   i = 0
  
#   s.each_char do |char|
   
#     if char != c 
#       tempt += char

#       if i == s.length - 1
#         result.push(tempt)
#       end     
#     else
#       if char == c || i == s.length - 1
#         result.push(tempt)
#         tempt = ''
        
#       end
#     end 

#      i += 1 
#   end

#   print result
#   result
# end

# s = "split by space" 
# c = ' '

# s = "beekeeper needed"
# c = 'e'

s = "/home/./..//Documents/"
c = '/'

# s = '' 
# c = '?'

1.times { split(s, c) }

# Your previous Plain Text content is preserved below:

# Hello! Your interview question is below. Write code in this pad just like you would normally – your AI Interviewer will be able to see it.

# # String Split

# Without using a built-in string split method, implement a `split(s, c)` method, which receives a string `s` and a character `c` and splits `s` at each occurrence of `c`, returning a list of strings.

# Example 1: s = "split by space", c = ' '
# Output: ["split", "by", "space"]

# Example 2: s = "beekeeper needed", c = 'e'
# Output: ["b", "", "k", "", "p", "r n", "", "d", "d"]

# Example 3: s = "/home/./..//Documents/", c = '/'
# Output: ["", "home", ".", "..", "", "Documents", ""]

# Example 4: s = "", c = '?'
# Output: []

# Constraints:

# - The length of the input string is at most 10^6
# - The delimiter is a single character
