/*
    Given a non negative integer number num. For every numbers i in the range 0 ≤ i ≤ num calculate the number of 1's in their binary representation and return them as an array.
 */

class Solution {
//    func countBits(_ num: Int) -> [Int] {
//        var arr = [Int]()
//        for var n in 0...num {
//            var count = 0
//            while n > 0 {
//                n = n & (n - 1)
//                count += 1
//            }
//            arr.append(count)
//        }
//        return arr
//    }
    
    func countBits(_ num: Int) -> [Int] {
        if (num == 0) {
            return [0]
        }
        var arr = [0,1]
        var i = 2
        while i <= num {
            let n1 = i >> 1
            let n2 = i % 2
            arr.append(arr[n1] + arr[n2])
            i += 1
        }
        return arr
    }
}
