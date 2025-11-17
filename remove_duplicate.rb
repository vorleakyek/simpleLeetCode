#https://leetcode.com/problems/remove-duplicates-from-sorted-array/?envType=study-plan-v2&envId=top-interview-150

# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return 0 if nums.empty?

  write = 1

  (1...nums.length).each do |read|
    if nums[read] != nums[read - 1]
      nums[write] = nums[read]
      write += 1
    end
  end

  # Optional: truncate the array if needed
  nums.slice!(write..-1)

  write
end

# # @param {Integer[]} nums
# # @return {Integer}
def remove_duplicates(nums)

    i = 1

    while (i < nums.length)
        if (nums[i] == nums[i-1])
            nums.slice!(i,1)
        else
            i += 1 
        end
    end 

    nums.length

end



# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    nums.reject! {|num| num == val}
    nums.length
end


# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    ind = 0

    while ind < nums.length
        if nums[ind] == val
            nums.slice!(ind)
        else 
            ind += 1 
        end
    end

    nums.length
end


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
