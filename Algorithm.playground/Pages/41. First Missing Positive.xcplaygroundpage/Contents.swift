/*
 Given an unsorted integer array, find the smallest missing positive integer.
 */

class Solution {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        let sortNums = nums.sorted()
        var j = 1
        for i in 0..<sortNums.count {
            if sortNums[i] < 1 {
                continue
            }
            if sortNums.count - 1 > i && sortNums[i] == sortNums[i+1] {
                continue
            }
            if j != sortNums[i] {
                return j
            } else {
                j += 1
            }
        }
        return j
    }
}
