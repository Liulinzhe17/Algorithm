/*
 Given a binary tree, you need to compute the length of the diameter of the tree. The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the root.
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
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        let lheight = treeHeight(root?.left)
        let rheight = treeHeight(root?.right)
        
        return max(lheight+rheight, max(diameterOfBinaryTree(root?.left), diameterOfBinaryTree(root?.right)))
    }
    
    func treeHeight(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        return 1 + max(treeHeight(root?.left), treeHeight(root?.right))
    }
}
