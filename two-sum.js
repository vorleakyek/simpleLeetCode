//https://leetcode.com/problems/two-sum/ 
//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//You can return the answer in any order.

/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function(nums, target) {
    const hashMap = {};
    //{2:1, 7:1, 11:1, 15:1}

    for (let i=0; i<nums.length; i++){
        const complement = target - nums[i];
        if (complement in hashMap) {
            return [hashMap[complement], i];
        }
        hashMap[nums[i]] = i; 
    }
    
};
