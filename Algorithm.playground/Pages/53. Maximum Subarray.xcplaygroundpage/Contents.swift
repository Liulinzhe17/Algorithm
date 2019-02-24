/*
 Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
*/

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        if nums.count == 0 { return 0 }
        if nums.count == 1 { return nums[0] }
        
        var maxi = 0
        var result = Int.min
        for n in nums {
            maxi = n + max(maxi, 0)
            result = max(result, maxi)
        }
        return result
    }
}
