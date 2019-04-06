/*
 Given a non-empty array of integers, return the k most frequent elements.
 */

class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dic:[Int : Int] = [:]
        
        for element in nums {
            dic[element, default: 0] += 1
        }
        
        var countArray: [(element: Int, count: Int)] = []
        
        dic.forEach { (element, count) in
            countArray.append((element, count))
        }
        
        countArray.sort { (e1, e2) -> Bool in
            return e1.count > e2.count
        }
        
        var answer: [Int] = []
        
        for i in 0..<k {
            answer.append(countArray[i].element)
        }
        
        return answer
    }
}
