/*
 Given a non-empty array of integers, every element appears twice except for one. Find that single one.
 */

class Solution {
//    func singleNumber(_ nums: [Int]) -> Int {
//        var dic = [Int:Int]()
//        for n in nums {
//            dic[n] = dic[n]! + 1
//        }
//        for m in dic.keys {
//            if dic[m] == 1 {
//                return m
//            }
//        }
//        return 1
//    }
    func singleNumber(_ nums: [Int]) -> Int {
        var result = 0
        for i in 0..<nums.count {
            result ^= nums[i]
        }
        return result
    }
}
