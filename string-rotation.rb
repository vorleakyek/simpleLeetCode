# Write a method that checks if one string is a rotation of another.
# Example: "erbottlewat" is a rotation of "waterbottle".

def string_rotation? (s1, s2)
  return false if s1.length != s2.length 
  
  s1_s1 = s1 + s1 
  
  s1_s1.include?(s2)
end

puts string_rotation?( "waterbottle", "erbottlewat")


def reverse_string(str)
  arr = str.strip.split(" ")
  reverse_str = ""

  (arr.length - 1).downto(0) do |i|
    # Only add a space if it's not the first word being appended
    reverse_str << arr[i]
    reverse_str << " " unless i == 0
  end

  reverse_str
end

puts reverse_string("the sky is blue")  # => "blue is sky the"
