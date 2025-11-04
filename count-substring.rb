def count (s, char)
  sub_strings = s.split(char)
  print sub_strings
  count = 0

  sub_strings.each do |substr|
    #n*(n+1)/2 
    n = substr.length 
    total_substr_count = n * (n+1)/2 
    count += total_substr_count     
  end

  puts count
  count

end

s = "bcadefa"
char = "a"

1.times { count(s, char) }

# Your previous Plain Text content is preserved below:

# Hello! Your interview question is below. Write code in this pad just like you would normally – your AI Interviewer will be able to see it.

# # Count Substrings Without Letter

# Given a string, `s`, count the number of non-empty substrings of `s` that do not contain the letter 'a'.

# Example: "bcadefa"
# Output: 9. The 9 substrings without 'a' are: "b", "c", "bc", "d", "e", "f", "de", "ef", and "def".

# Constraints:

# - `0 <= s.length <= 10^5`
# - `s` consists of lowercase English letters only
