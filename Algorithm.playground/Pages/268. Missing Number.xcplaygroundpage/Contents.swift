/*
 Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the one that is missing from the array.
 */

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var result = 0
        for i in 0...nums.count {
            result += i
        }
        for i in 0..<nums.count {
            result -= nums[i]
        }
        return result
    }
}
