/*
 Given an array of 2n integers, your task is to group these integers into n pairs of integer, say (a1, b1), (a2, b2), ..., (an, bn) which makes sum of min(ai, bi) for all i from 1 to n as large as possible.
 */

class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        var sum = 0
        var arr = nums.sorted()
        for i in 0..<arr.count {
            if i % 2 == 0 {
                sum += arr[i]
            }
        }
        return sum
    }
}
var s = Solution()
s.arrayPairSum([1,4,2,3])

