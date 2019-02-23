/*
 You are climbing a stair case. It takes n steps to reach to the top.

Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
*/

class Solution {
    func climbStairs(_ n: Int) -> Int {
        
        guard n > 2 else { return n }
        
        var arr = Array(repeating: 0, count: n)
        arr[0] = 1
        arr[1] = 2
        
        for i in 2..<n {
            arr[i] = (arr[i-1] + arr[i-2])
        }
        return arr[n-1]
    }
} //只保存n-1 和 n-2的值 能获取更优内存空间

