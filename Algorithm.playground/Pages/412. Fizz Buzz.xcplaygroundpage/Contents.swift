/*
 Write a program that outputs the string representation of numbers from 1 to n.
 
 But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”. For numbers which are multiples of both three and five output “FizzBuzz”.
 */

class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var result = Array(repeating: "", count: n)
        for i in 0..<n {
            if (i+1) % 15 == 0 {
                result[i] = "FizzBuzz"
            } else if (i+1) % 5 == 0 {
                result[i] = "Buzz"
            } else if (i+1) % 3 == 0 {
                result[i] = "Fizz"
            } else {
                result[i] = String(i+1)
            }
        }
        return result
    }
}
var temp = Solution()
temp.fizzBuzz(1)
