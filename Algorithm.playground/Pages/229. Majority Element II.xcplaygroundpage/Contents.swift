/* Given an integer array of size n, find all elements that appear more than ⌊ n/3 ⌋ times.

Note: The algorithm should run in linear time and in O(1) space.
*/

class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        guard nums.count > 0 else {
            return []
        }
        
        guard nums.count > 1 else {
            return [nums[0]]
        }
        
        var candidate1 = nums[0]
        var candidate2 = 0
        var count1 = 0
        var count2 = 0
        
        for n in nums {
            if candidate1 == n {
                count1 += 1
            } else if candidate2 == n {
                count2 += 1
            } else if count1 == 0 {
                candidate1 = n
                count1 = 1
            } else if count2 == 0 {
                candidate2 = n
                count2 = 1
            } else {
                count2 -= 1
                count1 -= 1
            }
        }
        if candidate2 == candidate1 {
            return [candidate1]
        }
        count2 = 0
        count1 = 0
        for n in nums {
            if n == candidate1 {
                count1 += 1
            } else if n == candidate2 {
                count2 += 1
            }
        }
        if count1 > nums.count/3 && count2 > nums.count/3 {
            return [candidate1, candidate2]
        } else if count1 > nums.count/3 {
            return [candidate1]
        } else if count2 > nums.count/3 {
            return [candidate2]
        } else {
            return []
        }
    }
}
