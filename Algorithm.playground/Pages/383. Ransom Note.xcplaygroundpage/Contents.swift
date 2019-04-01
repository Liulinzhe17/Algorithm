/*
 Given an arbitrary ransom note string and another string containing letters from all the magazines, write a function that will return true if the ransom note can be constructed from the magazines ; otherwise, it will return false.
 
 Each letter in the magazine string can only be used once in your ransom note.
 */

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var magazineDic:[Character:Int] = [:]
        
        for c in magazine {
            magazineDic[c] = (magazineDic[c] ?? 0) + 1
        }
        
        for c in ransomNote {
            if magazineDic[c] == nil || magazineDic[c]! == 0 {
                return false
            }
            
            magazineDic[c]! -= 1
        }
        
        return true
    }
}
