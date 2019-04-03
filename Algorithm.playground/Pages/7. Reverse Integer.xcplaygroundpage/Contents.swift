/*
 Given a 32-bit signed integer, reverse digits of an integer.
 */

class Solution {
    func reverse(_ x: Int) -> Int {
        var result = 0
        var num = abs(x)
        
        while num > 0 {
            let lastDigst = num % 10
            num = num / 10
            result = result * 10 + lastDigst
            if result > Int32.max {
                return 0
            }
        }
        
        if x < 0 {
            return -result
        } else {
            return result
        }
    }
}
