import Foundation

// https://leetcode.com/problems/search-in-a-binary-search-tree/

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

// 1. Brute force approach.
func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    
    var resultNode: TreeNode?
    
    func traverseBST(_ node: TreeNode?) {
        guard let node = node else { return }
        
        if node.val == val {
            resultNode = node
            return
        }
        
        traverseBST(node.left)
        traverseBST(node.right)
    }
    
    traverseBST(root)
    
    return resultNode
}
