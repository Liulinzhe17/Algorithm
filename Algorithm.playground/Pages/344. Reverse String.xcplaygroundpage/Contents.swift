/*
 Write a function that reverses a string. The input string is given as an array of characters char[].

Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
*/

class Solution {
    func reverseString(_ s: inout [Character]) {
        var j = s.count - 1
        for i in 0..<s.count/2 {
            s.swapAt(i, j)
            j -= 1
        }
    }
}
