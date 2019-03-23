/*
 Given a string S, return the "reversed" string where all characters that are not a letter stay in the same place, and all letters reverse their positions.
 */

class Solution {
    func reverseOnlyLetters(_ S: String) -> String {
        var stemp = Array<Character>()
        var result = Array(S)
        
        let j = result.count - 1
        for i in 0..<result.count {
            if (String(result[j-i]) <= "z" && String(result[j-i]) >= "a") || (String(result[j-i]) <= "Z" && String(result[j-i]) >= "A") {
                
                stemp.append(result[j-i])
            }
        }
        var k = 0
        for i in 0..<result.count {
            if (String(result[i]) <= "z" && String(result[i]) >= "a") || (String(result[i]) <= "Z" && String(result[i]) >= "A") {
                
                result[i] = stemp[k]
                k += 1
            }
        }
        
        return String(result)
    }
}

var s = Solution().reverseOnlyLetters("a-bC-dEf-ghIj")
