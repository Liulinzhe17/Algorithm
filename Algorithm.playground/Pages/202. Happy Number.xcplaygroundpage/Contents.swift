/*
 Write an algorithm to determine if a number is "happy".
 
 A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers.
 */

class Solution {
    
    func digitSquareSum(_ n: Int) -> Int {
        var temp = 0
        var sum = 0
        var num = n
        while num > 0 {
            temp = num % 10
            sum += (temp * temp)
            num = num / 10
        }
        return sum
    }
    
    func isHappy(_ n: Int) -> Bool {
        var slow = n
        var fast = n
        repeat {
            slow = digitSquareSum(slow)
            fast = digitSquareSum(fast)
            fast = digitSquareSum(fast)
        } while fast != slow
        if slow == 1 {
            return true
        }
        return false
    }
}

