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

func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    if root == nil {
        return nil
    }
    
    if root!.val == val {
      return root
    }
    
    return  val > root!.val ? searchBST(root?.right, val) : searchBST(root?.left, val)
}
