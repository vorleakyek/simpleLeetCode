# https://leetcode.com/problems/rotate-array/submissions/1832911603/?envType=study-plan-v2&envId=top-interview-150
# update in-place

# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)

    reverse(nums, 0, nums.length - 1)
    reverse(nums, 0, k - 1)
    reverse(nums, k , nums.length - 1)

    nums
 
end

def reverse(nums, left, right)
    while left < right
        nums[left], nums[right] = nums[right], nums[left]
        left += 1
        right -= 1 
    end
end



# create a new array 


def array_rotation(arr, k)
  
  result = []
  
  (0...arr.length).each do |i| 

    result << arr[(i+k)%arr.length] 
  end
  
  result
end

print array_rotation([1,2,3,4,5,6,7], 3)

# pulling elements from ahead and placing them earlier — which is the essence of left rotation.
