/*
 Given an integer n, return the number of trailing zeroes in n!.
*/

class Solution {
    func trailingZeroes(_ n: Int) -> Int {
        var result = 0
        var n = n
        while n > 0 {
            result += n / 5
            n /= 5
        }
        return result
    }
}
