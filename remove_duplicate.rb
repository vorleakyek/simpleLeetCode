def remove_duplicate(nums) 
  
  i = 0 
  
  while i < nums.length - 1
    if nums[i] == nums[i+1]
      nums.slice!(i+1)
    else
      i +=1 
    end
  end
  
  nums
  
end

print remove_duplicate([1,2,2,2,3,3,5,5])
