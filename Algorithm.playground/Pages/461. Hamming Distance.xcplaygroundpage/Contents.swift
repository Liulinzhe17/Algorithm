/*
 The Hamming distance between two integers is the number of positions at which the corresponding bits are different.

Given two integers x and y, calculate the Hamming distance.
 */


class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var result = 0
        var res2 = x ^ y
        while res2 != 0 {
//            if 1 == (res2 & 1) {
//                result += 1
//            }
//            res2 = res2 >> 1
            res2 &= res2 - 1
            result += 1
        }
        
        return result
    }
    
}
