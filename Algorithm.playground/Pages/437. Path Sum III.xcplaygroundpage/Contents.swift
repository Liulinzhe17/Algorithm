/*
 You are given a binary tree in which each node contains an integer value.
 
 Find the number of paths that sum to a given value.
 
 The path does not need to start or end at the root or a leaf, but it must go downwards (traveling only from parent nodes to child nodes).
 
 The tree has no more than 1,000 nodes and the values are in the range -1,000,000 to 1,000,000.
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
    func pathSum(_ root: TreeNode?, _ sum: Int) -> Int {
        if root == nil { return 0 }
        
        return findPath(_:root ,sum) + pathSum(_:root?.right,sum) + pathSum(_:root?.left,sum)
    }
    
    func findPath(_ root: TreeNode?, _ sum: Int) -> Int {
        if root == nil {
            return 0
        }
        
        var result = 0
        if root?.val == sum {
            result += 1
        }
        result += findPath(root?.left, sum - root!.val)
        result += findPath(root?.right, sum - root!.val)
        
        return result
    }
}
