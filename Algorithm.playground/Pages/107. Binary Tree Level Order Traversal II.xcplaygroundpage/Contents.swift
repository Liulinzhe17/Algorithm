/*
 Given a binary tree, return the bottom-up level order traversal of its nodes' values. (ie, from left to right, level by level from leaf to root).
 */

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        guard root != nil else { return [] }
        var queue = [root]
        var res = [[Int]]()
        
        while queue.count > 0 {
            var levelNodes = queue.count
            var levelArray = [Int]()
            
            while levelNodes > 0 {
                let node = queue.removeFirst()
                if let left = node?.left {
                    queue.append(left)
                }
                if let right = node?.right {
                    queue.append(right)
                }
                
                levelArray.append(node!.val)
                levelNodes -= 1
            }
            
            res.append(levelArray)
        }
        
        return res.reversed()
    }
}
