def is_subsequence(s, t)
  s_ind = 0
  t_ind = 0

  while s_ind < s.length && t_ind < t.length
    s_ind += 1 if s[s_ind] == t[t_ind]
    t_ind += 1
  end

  s_ind == s.length
end


# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)

    s_ind = 0
    t_ind = 0 

    # while (s_ind < s.length && t_ind < t.length)
        
        (t_ind...t.length).each do |i|
            if s[s_ind] == t[i] 
                s_ind += 1
            end
            t_ind = i + 1 
            print i
        end 

        return s_ind == s.length

        
    # end 
    
    true
    
end
