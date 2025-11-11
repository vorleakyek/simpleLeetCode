# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
    tempt = ""
    
    s.each_with_index do |ch, ind|
        if ind < s.length/2
            tempt = s[ind]
            s[ind] = s[s.length - 1 - ind]
            s[s.length - 1 - ind] = tempt
        else 
            break
        end
        
        
    end
    print s
    s
end

# input as a string type 
def reverse_string(s)
  s.chars.reverse.join
end

puts reverse_string("hello")  # => "olleh"

# input as an array type  
def reverse_array(s)
  (0...s.length / 2).each do |i|
    s[i], s[s.length - 1 - i] = s[s.length - 1 - i], s[i]
  end
  s
end

puts reverse_array(['h','e','l','l','o']).join  # => "olleh"
