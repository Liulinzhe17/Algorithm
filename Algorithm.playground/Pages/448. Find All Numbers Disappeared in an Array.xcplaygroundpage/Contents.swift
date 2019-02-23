/*
 Given an array of integers where 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice and others appear once.

Find all the elements of [1, n] inclusive that do not appear in this array.

Could you do it without extra space and in O(n) runtime? You may assume the returned list does not count as extra space.
 */

class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else {
            return nums
        }
        var results = [Int]()
        var res = [Int]()
        for i in 1...nums.count {
            results.append(i)
        }
        for i in nums {
            results[i-1] = 0
        }
        for i in 0..<results.count {
            if results[i] != 0 {
                res.append(results[i])
            }
        }
        
        return res
    }
}
