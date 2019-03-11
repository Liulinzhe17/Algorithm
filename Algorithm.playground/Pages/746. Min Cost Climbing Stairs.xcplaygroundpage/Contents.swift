/*
 On a staircase, the i-th step has some non-negative cost cost[i] assigned (0 indexed).
 
 Once you pay the cost, you can either climb one or two steps. You need to find minimum cost to reach the top of the floor, and you can either start from the step with index 0, or the step with index 1.
 */

class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        if cost.count == 1 {
            return cost[0]
        }
        if cost.count == 2 {
            return min(cost[0], cost[1])
        }
        
        var result = Array(repeating: 0, count: cost.count+1)
        result[0] = 0
        result[1] = 0
        for i in 2...cost.count {
            result[i] = min(result[i-2] + cost[i-2], result[i-1] + cost[i-1])
        }
        return result[cost.count]
    }
}
