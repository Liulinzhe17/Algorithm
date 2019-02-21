/*
 Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
*/

class Solution {
//    func moveZeroes(_ nums: inout [Int]) {
//        for i in 0..<nums.count {
//            if nums[i] != 0 {
//                let temp = nums[i]
//                guard let index = nums.firstIndex(of: 0) else {
//                    return
//                }
//                if index > i { continue }
//                nums[i] = nums[index]
//                nums[index] = temp
//            }
//        }
//    }
    func moveZeroes(_ nums: inout [Int]) {
        var firstNonoZeroIndex = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                nums.swapAt(firstNonoZeroIndex, i)
                firstNonoZeroIndex += 1
            }
        }
    }

    
}
