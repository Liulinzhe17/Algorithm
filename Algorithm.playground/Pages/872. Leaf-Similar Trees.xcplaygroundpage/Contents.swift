/*
 Consider all the leaves of a binary tree.  From left to right order, the values of those leaves form a leaf value sequence.
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
    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        var result1 = Array<Int>()
        var result2 = Array<Int>()
        DFS(root1, &result1)
        DFS(root2, &result2)
        
        return result1 == result2
    }
    
    func DFS(_ root: TreeNode?, _ arr: inout [Int]) {
        if root == nil {
            return
        }
        if root?.left == nil && root?.right == nil {
            arr.append(root!.val)
        }
        DFS(root?.left, &arr)
        DFS(root?.right, &arr)
    }
}
