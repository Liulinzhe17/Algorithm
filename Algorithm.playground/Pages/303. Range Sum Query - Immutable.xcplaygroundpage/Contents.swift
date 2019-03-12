/*
 Given an integer array nums, find the sum of the elements between indices i and j (i ≤ j), inclusive.
 */

//class NumArray {
//
//    var temps = Array<Int>()
//    var arr = Array<Int>()
//
//    init(_ nums: [Int]) {
//        arr = nums
//        if nums.count < 1 {
//            return
//        }
//        for i in 0..<nums.count-1 {
//            temps.append(nums[i]+nums[i+1])
//        }
//    }
//
//    func sumRange(_ i: Int, _ j: Int) -> Int {
//        if i == j { return arr[i] }
//        var result = 0
//        var l = i
//        let r = j
//        while l <= r {
//            if l == r {
//                result += arr[l]
//            } else {
//                result += temps[l]
//            }
//            l += 2
//        }
//        return result
//    }
//}

class NumArray {
    
    var temps:[Int]!
    
    init(_ nums: [Int]) {
        temps = Array(repeating: 0, count: nums.count)
        guard nums.count > 0 else { return }
        temps[0] = nums[0]
        for i in 1..<nums.count {
            temps[i] = nums[i] + temps[i-1]
        }
    }
    
    func sumRange(_ i: Int, _ j: Int) -> Int {
        if i > 0 {
            return temps[j] - temps[i-1]
        } else {
            return temps[j]
        }
    }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * let obj = NumArray(nums)
 * let ret_1: Int = obj.sumRange(i, j)
 */

