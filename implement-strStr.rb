# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    
    return 0 if haystack == needle
    
    n_len = needle.length
    hay_len = haystack.length
    
    (0..hay_len - n_len).each do |i| 
        tempt = ""
        
        (i..i + n_len - 1).each do |j|
            tempt += haystack[j] 
        end
        
        puts tempt
        
        if tempt == needle  
            return i
        end 
        
    end
    
    return -1 
end
