/*
 The Fibonacci numbers, commonly denoted F(n) form a sequence, called the Fibonacci sequence, such that each number is the sum of the two preceding ones, starting from 0 and 1. That is,
 */

class Solution {
    func fib(_ N: Int) -> Int {
        if N == 0 {
            return 0
        }
        if N == 1 {
            return 1
        }
//        return fib(N - 1) + fib(N - 2)
        var result = Array<Int>()
        result.append(0)
        result.append(1)
        for i in 2...N {
            result.append(result[i-1] + result[i-2])
        }
        return result[N]
    }
}
