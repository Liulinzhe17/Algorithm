/*
 Given an array, rotate the array to the right by k steps, where k is non-negative.
 */

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        
        guard nums.count > 1, k > 0 else { return }
        
        if k >= nums.count {
            rotate(&nums, k - nums.count)
        } else {
            var kArr = Array<Int>()
            for i in 1...k {
                kArr.append(nums[nums.count - i])
            }
            
            for j in 1...(nums.count-k) {
                nums[nums.count - j] = nums[nums.count-k-j]
            }
            
            for i in 0..<k {
                nums[i] = kArr[k-i-1]
            }
        }
    }
}
