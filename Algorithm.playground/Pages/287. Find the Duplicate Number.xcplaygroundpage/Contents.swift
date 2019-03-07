/*
 Given an array nums containing n + 1 integers where each integer is between 1 and n (inclusive), prove that at least one duplicate number must exist. Assume that there is only one duplicate number, find the duplicate one.
 */

class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        var slow = 0
        var fast = 0
        var find = 0
        while true {
            slow = nums[slow]
            fast = nums[nums[fast]]
            if slow == fast { break }
        }
        while true {
            slow = nums[slow]
            find = nums[find]
            if find == slow { break }
        }
        return find
    }
}
