# https://leetcode.com/problems/contains-duplicate/description/
# @param {Integer[]} nums
# @return {Boolean}

def contains_duplicate(nums)
    hashMap = {}

    for num in nums do
        if hashMap[num].nil? 
            hashMap[num] = 0
        else
            return true
        end
    end 

    return false
end
