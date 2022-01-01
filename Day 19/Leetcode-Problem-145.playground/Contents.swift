import Foundation

// https://leetcode.com/problems/binary-tree-postorder-traversal/

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

func postorderTraversal(_ root: TreeNode?) -> [Int] {
    var result = [Int]()
    
    func postOrderTraverse(_ node: TreeNode?) {
        guard let node = node else {
            return
        }
        
        postOrderTraverse(node.left)
        postOrderTraverse(node.right)
        result.append(node.val)
        
    }
    
    postOrderTraverse(root)
    
    return result
}
