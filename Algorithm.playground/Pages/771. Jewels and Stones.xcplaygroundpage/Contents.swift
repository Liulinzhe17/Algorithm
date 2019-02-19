/*
 You're given strings J representing the types of stones that are jewels, and S representing the stones you have.  Each character in S is a type of stone you have.  You want to know how many of the stones you have are also jewels.

The letters in J are guaranteed distinct, and all characters in J and S are letters. Letters are case sensitive, so "a" is considered a different type of stone from "A".
 */

class Solution {
    class func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var JSet = Set<Character>(J)
        for j in J {
            JSet.insert(j)
        }
        print(JSet)
        var result:Int? = 0
        for c:Character in S {
            if JSet.contains(c) {
                result = result! + 1
            }
            
        }
        
        return result!
    }
}
Solution.numJewelsInStones("B", "Aaabds")
