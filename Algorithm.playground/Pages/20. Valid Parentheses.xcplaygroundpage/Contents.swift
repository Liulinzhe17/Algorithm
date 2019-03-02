/*
 Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
 
 An input string is valid if:
 
 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Note that an empty string is also considered valid.
 */

class Solution {
    func isValid(_ s: String) -> Bool {
        if s.isEmpty { return true }
        let cs = Array.init(s)
        var stack = [Character]()
        
        for n in cs {
            if n == "{" {
                stack.append("}")
            } else if n == "[" {
                stack.append("]")
            } else if n == "(" {
                stack.append(")")
            } else {
                if stack.last == n {
                    stack.removeLast()
                } else {
                    return false
                }
            }
        }
        
        return stack.isEmpty
    }
}

var temp = Solution()
temp.isValid("{}")

