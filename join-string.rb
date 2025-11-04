def join_str(arr, separator)
  return "" if arr.empty?

  result = ""

  arr.each_with_index do |word, i|
    result << word
    result << separator unless i == arr.length - 1
  end

  result
end


def joinStr(arr, s)
  return "" if arr.length == 0

  result = ""
  
  for i in 0..arr.length-2 do 
    joined = arr[i] + s 
    result << joined 
  end 

  result << arr[arr.length-1]
  puts result
end


arr = ["join", "by", "space"]
s = " "
1.times { joinStr(arr,s) }

# Your previous Plain Text content is preserved below:

# Hello! Your interview question is below. Write code in this pad just like you would normally – your AI Interviewer will be able to see it.

# # String Join

# Without using a built-in string join method, implement a `join(arr, s)` method, which receives an array of strings, `arr`, and a string, `s`, and returns a single string consisting of the strings in `arr` with `s` in between them.

# Example 1: arr = ["join", "by", "space"], s = " "
# Output: "join by space"

# Example 2: arr = ["b", "", "k", "", "p", "r n", "", "d", "d!!"], s = "ee"
# Output: "beeeekeeeepeer neeeedeed!!"

# Example 3: arr = [], s = "x"
# Output: ""

# If strings in your language are immutable, assume that you have access to a function `array_to_string(arr)`, which takes an array of individual characters and returns a string with those characters in `O(len(arr))` time.

# Constraints:

# - 0 <= s.length <= 500
# - 0 <= arr.length <= 10^5
# - 0 <= arr[i].length <= 10^5
# - the sum of the lengths of the strings in `arr` is at most 10^5
