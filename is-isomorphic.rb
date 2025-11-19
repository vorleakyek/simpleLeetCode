def is_isomorphic(s, t)
  return false if s.length != t.length

  s_to_t = {}
  t_to_s = {}

  s.each_char.with_index do |sc, i|
    tc = t[i]

    if s_to_t[sc] && s_to_t[sc] != tc
      return false
    end

    if t_to_s[tc] && t_to_s[tc] != sc
      return false
    end

    s_to_t[sc] = tc
    t_to_s[tc] = sc
  end

  true
end

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
    return false if s.length != t.length
   # return true if s == t
    
    hash = {}

    s.each_char.with_index do |ch, i|
        
        if hash[ch].nil?
            if hash.value?(t[i])
                return false
            else 
                hash[ch] = t[i]
            end
            
        else
            if hash[ch] != t[i]
                return false
            end

        end 
    end

    true

end
