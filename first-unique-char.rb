# https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/881/

# @param {String} s
# @return {Integer}
def first_uniq_char(s)
    hash = Hash.new(0)
    
    # store freq  
    s.each_char do |ch| 
        hash[ch] += 1  
    end
    
    # loop through each char and use the hash to check the freq 
    s.each_char.with_index do |ch, i|
       return i if (hash[ch] == 1) 
    end
    
    -1 
    
end
