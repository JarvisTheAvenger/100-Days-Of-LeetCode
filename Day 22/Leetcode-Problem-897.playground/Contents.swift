import Foundation

// https://leetcode.com/problems/increasing-order-search-tree/

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
 

func increasingBST(_ root: TreeNode?) -> TreeNode? {
    // Create dummy root node
    let newRoot: TreeNode? = TreeNode(0)
   
    // Set dummy root to head
    var head = newRoot

    func traverse(_ node: TreeNode?) {
        guard let node = node else { return }
        
        traverse(node.left)
        
        // Set head's right to the new ndoe
        head?.right = TreeNode(node.val)
        head = head?.right

        traverse(node.right)
    }
    
    traverse(root)
    
    return newRoot?.right
}
