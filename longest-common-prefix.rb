# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    
    #return "" if strs[0] == ""
    return strs[0] if strs.length == 1 
    
    result = ""
    
    # find the shortest str length within the array
    shortestLength = 0
    strs.each do |str|
       shortestLength = [str.length, shortestLength].max  
    end
    
    (0..shortestLength).each do |i|
        tempt = ""
        strs.each_with_index do |str, j|
            next if j == strs.length - 1
            
            if str[i] == strs[j+1][i] 
                tempt = str[i]
            else
                return result
            end
        end
        
        result += tempt unless tempt.nil? 
        
    end
    
    result 
    
end
