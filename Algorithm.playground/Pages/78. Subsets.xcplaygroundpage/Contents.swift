/*
 Given a set of distinct integers, nums, return all possible subsets (the power set).
 
 Note: The solution set must not contain duplicate subsets.
 */

class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var result:[[Int]] = Array(Array())
        result.append([])
        for num in nums {
            for i in 0..<result.count {
                var temp = result[i]
                temp.append(num)
                result.append(temp)
            }
        }
        
        return result
    }
}
