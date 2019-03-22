/*
A binary tree is univalued if every node in the tree has the same value.

Return true if and only if the given tree is univalued.
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
    func isUnivalTree(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        
        var result = true
        
        if root?.left != nil {
            result = result && (root?.left?.val == root?.val)
        }
        
        if root?.right != nil {
            result = result && (root?.right?.val == root?.val)
        }
        
        return result && isUnivalTree(root?.right) && isUnivalTree(root?.left)
    }
}
