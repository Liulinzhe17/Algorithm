/*
 Given a binary array, find the maximum number of consecutive 1s in this array.
 */

class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        guard nums.contains(1) else { return 0 }
        
        var maxNum = 0
        var start = 0
        var end = 0
        for i in 0..<nums.count {
            if nums[i] == 1 {
                end += 1
            } else {
                maxNum = max(maxNum, end-start)
                end = i
                start = i
            }
        }
        
        maxNum = max(maxNum, end-start)
        
        return maxNum
    }
}
