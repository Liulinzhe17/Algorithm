/*
 Given an integer array, you need to find one continuous subarray that if you only sort this subarray in ascending order, then the whole array will be sorted in ascending order, too.
 
 You need to find the shortest such subarray and output its length.
 */

class Solution {
    func findUnsortedSubarray(_ nums: [Int]) -> Int {
        let sortNums = nums.sorted()
        var minIndex = Int.max
        var maxIndex = 0
        for i in 0..<nums.count {
            if nums[i] != sortNums[i] {
                minIndex = min(minIndex, i)
                maxIndex = max(maxIndex, i)
            }
        }
        return maxIndex - minIndex > 0 ? maxIndex - minIndex + 1 : 0
    }
}
