def shift_string(dict, str, offset) 
  new_str = ""
  
  str.each_char do |char|
    index = dict.index(char)
    if index 
      shift_index = (index + offset) % dict.length 
      new_str += dict[shift_index]
    else 
      new_str += char
    end 
  end 
  
  puts new_str
  return new_str
end


dictionary = "!@#$%^&*()/0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
str = "ABC"
offset = -3 
# output "xyz"

shift_string(dictionary,str,offset)
