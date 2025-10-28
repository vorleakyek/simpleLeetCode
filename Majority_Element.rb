# https://leetcode.com/problems/majority-element/

# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    hashMap = {}

    for num in nums do
        if hashMap[num].nil?
            hashMap[num] = 1
        else 
            hashMap[num] = hashMap[num] + 1
        end
    end       

    hashMap.each_key do |key|
        if hashMap[key] > nums.length / 2
            return key
        end
    end
end
