/*
 Given a pattern and a string str, find if str follows the same pattern.
 
 Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in str.
 */

class Solution {
    func wordPattern(_ pattern: String, _ str: String) -> Bool {
        var pArr:[Character] = [Character]()
        var sArr = str.split(separator: " ")
        
        for p in pattern {
            pArr.append(p)
        }
        
        guard pArr.count == sArr.count else {
            return false
        }
        
        var pDic:[Character: Int] = [:]
        var sDic:[String: Int] = [:]
        
        for i in 0..<sArr.count {
            if pDic.updateValue(i, forKey: pArr[i]) != sDic.updateValue(i, forKey: String(sArr[i])) {
                return false
            }
        }
        
        return true
    }
}
