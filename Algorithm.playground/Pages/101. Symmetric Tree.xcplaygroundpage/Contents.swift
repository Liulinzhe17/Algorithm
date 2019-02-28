/*
 Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).

For example, this binary tree [1,2,2,3,4,4,3] is symmetric:
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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return isMirror(leftRoot: root, rightRoot: root)
    }
    
    func isMirror(leftRoot: TreeNode?, rightRoot: TreeNode?) -> Bool {
        if leftRoot == nil && rightRoot == nil {
            return true
        }
        if leftRoot == nil && rightRoot != nil {
            return false
        }
        if leftRoot != nil && rightRoot == nil {
            return false
        }
        return (leftRoot?.val == rightRoot?.val) && isMirror(leftRoot:leftRoot?.left, rightRoot:rightRoot?.right) && isMirror(leftRoot:leftRoot?.right, rightRoot:rightRoot?.left)
    }
}
