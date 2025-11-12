# return the index of the two numbers 

def two_sum(nums, sum)
  hash = {}
  
  nums.each_with_index do |num1, ind|
    num2 = sum - num1
    
    if hash.key?(num2)
      return [hash[num2], ind]
    else 
      hash[num1] = ind 
    end
  end
  
  nil
  
end

print two_sum([1,2,2], 4)
