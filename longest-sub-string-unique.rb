def longest_sub_string(str)
  max_length = 0

  (0...str.length).each do |ind_1|
    freq = {}
    count = 0

    (ind_1...str.length).each do |i|
      if freq[str[i]].nil?
        freq[str[i]] = 1
        count += 1
      else
        break
      end
    end

    max_length = [max_length, count].max
  end

  max_length
end

puts longest_sub_string("abcabcbb")  # Output: 3
