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
