/*
 In a binary tree, the root node is at depth 0, and children of each depth k node are at depth k+1.
 
 Two nodes of a binary tree are cousins if they have the same depth, but have different parents.
 
 We are given the root of a binary tree with unique values, and the values x and y of two different nodes in the tree.
 
 Return true if and only if the nodes corresponding to the values x and y are cousins.
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
    
    func isCousins(_ root: TreeNode?, _ x: Int, _ y: Int) -> Bool {
        var depthDic = Dictionary<Int,Int>()
        var parentDic = Dictionary<Int, TreeNode>()
        dfs(root, nil, &depthDic, &parentDic)
        
        return depthDic[x] == depthDic[y] && parentDic[x]?.val != parentDic[y]?.val
    }
    
    func dfs(_ root: TreeNode?, _ parent: TreeNode?, _ depthDic: inout [Int:Int], _ parentDic: inout [Int:TreeNode]) {
        
        if root != nil {
            depthDic[root!.val] = parent != nil ? 1+depthDic[parent!.val]! : 0
            parentDic[root!.val] = parent
            dfs(root!.right, root, &depthDic, &parentDic)
            dfs(root!.left, root, &depthDic, &parentDic)
        }
    }
}
