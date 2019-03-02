/*
 Given two non-empty binary trees s and t, check whether tree t has exactly the same structure and node values with a subtree of s. A subtree of s is a tree consists of a node in s and all of this node's descendants. The tree s could also be considered as a subtree of itself.
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
    func isSubtree(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
        
        if s == nil || t == nil {
            return false
        }
        
        if isSameTree(s: s, t: t) {
            return true
        }
        
        return isSubtree(s?.left, t) || isSubtree(s?.right, t)
    }
    func isSameTree(s: TreeNode?, t: TreeNode?) -> Bool {
        
        if s == nil || t == nil {
            return s?.val == t?.val
        }
        
        if s?.val != t?.val {
            return false
        }
        
        return isSameTree(s:s?.left, t:t?.left) && isSameTree(s:s?.right, t:t?.right)
        
    }
}
