//Implement pow(x, n), which calculates x raised to the power n (xn).

import Foundation

//class Solution {
//    func myPow(_ x: Double, _ n: Int) -> Double {
//        return pow(x, Double(n))
//    }
//}

class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        if n == 0 {
            return 1
        }
        
        var x = x
        var n = n
        
        if n < 0 {
            n = -n
            x = 1 / x
        }
        
        if n % 2 == 0 {
            return myPow(x * x, n / 2)
        } else {
            return x * myPow(x * x, n / 2)
        }
    }
}

