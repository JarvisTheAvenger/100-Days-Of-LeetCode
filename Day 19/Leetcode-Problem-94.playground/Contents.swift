import Foundation

// https://leetcode.com/problems/binary-tree-inorder-traversal/

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

func inorderTraversal(_ root: TreeNode?) -> [Int] {
    var result = [Int]()
    
    func inorderTraversal(node: TreeNode?) {
        guard let node = node else { return }
        
        inorderTraversal(node: node.left)
        result.append(node.val)
        inorderTraversal(node: node.right)
    }
    
    inorderTraversal(node: root)
    
    return result
}
