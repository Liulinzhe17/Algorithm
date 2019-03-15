/*
 Given an array of integers, find if the array contains any duplicates.
 
 Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.
 */

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        
        if nums.count <= 1 {
            return false
        }
        var sortn = nums.sorted()
        
        for i in 0..<sortn.count-1 {
            if sortn[i] == sortn[i+1] {
                return true
            }
        }
        return false
    }
}
