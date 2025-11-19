def can_construct(ransom_note, magazine)
  freq = Hash.new(0)

  magazine.each_char { |ch| freq[ch] += 1 }

  ransom_note.each_char do |ch|
    return false if freq[ch] <= 0
    freq[ch] -= 1
  end

  true
end


# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    freq = Hash.new(0)

    magazine.each_char do |ch|
        freq[ch] +=1 
    end

    ransom_note.each_char do |ch|
        puts ch
        return false if freq[ch].nil? 

        if freq[ch] > 0 
            freq[ch] -= 1
        else 
            return false
        end

    end   

    true 
end
