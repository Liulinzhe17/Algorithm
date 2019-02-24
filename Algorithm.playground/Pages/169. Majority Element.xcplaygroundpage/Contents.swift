/*
 Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
You may assume that the array is non-empty and the majority element always exist in the array.
 */

class Solution {
//    func majorityElement(_ nums: [Int]) -> Int {
//        guard nums.count > 0 else {
//            return nums[0]
//        }
//        var dic = [Int:Int]()
//        var max = 0
//        for n in nums {
//            dic[n] = (dic[n] ?? 0) + 1
//            if max < dic[n]! { max = dic[n]! }
//        }
//        for n in dic {
//            if n.value == max { return n.key }
//        }
//
//        return nums[0]
//    }
    
    //摩尔投票算法
    func majorityElement(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return nums[0]
        }
        var count = 0
        var candidate = nums[0]
        
        for n in nums {
            if count == 0 {
                candidate = n
            }
            count += (n == candidate) ? 1 : -1
        }
        return candidate
    }
}
