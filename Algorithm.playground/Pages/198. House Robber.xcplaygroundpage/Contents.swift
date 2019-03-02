/*
 You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security system connected and it will automatically contact the police if two adjacent houses were broken into on the same night.
 
 Given a list of non-negative integers representing the amount of money of each house, determine the maximum amount of money you can rob tonight without alerting the police.
 */

class Solution {
    func rob(_ nums: [Int]) -> Int { //dp 状态转移方程d(i) = max(nums[i]+d(i-2), d(i-1))
        if nums.count == 0 {
            return 0
        }
        if nums.count == 1 {
            return nums[0]
        }
        if nums.count == 2 {
            return max(nums[0], nums[1])
        }
//
//        var dp = Array(repeating: 0, count: nums.count)
//        dp[0] = nums[0]
//        dp[1] = max(nums[0], nums[1])
//        dp[2] = max(nums[0]+nums[2], nums[1])
        var prepre = max(nums[0], nums[1])
        var pre = max(nums[0]+nums[2], nums[1])
        var cur = pre
        
        for i in 3..<nums.count {
            let temp = pre
            cur = max(pre, prepre + nums[i])
            pre = cur
            prepre = temp
        }
        return cur
    }
}
