/*
 Given a non-empty array of digits representing a non-negative integer, plus one to the integer.
 
 The digits are stored such that the most significant digit is at the head of the list, and each element in the array contain a single digit.
 
 You may assume the integer does not contain any leading zero, except the number 0 itself.
 */

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = Array<Int>()
        let length = digits.count
        var j = 1
        for i in 1...length {
            if i == j {
                if digits[length - i] == 9 {
                    result.append(0)
                    j += 1
                } else {
                    result.append(digits[length - i] + 1)
                }
            } else {
                result.append(digits[length - i])
            }
        }
        
        if result.last == 0 {
            result.append(1)
        }
        return result.reversed()
    }
}
