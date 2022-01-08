import Foundation

// https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/

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
 
func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
    guard !preorder.isEmpty, !inorder.isEmpty else { return nil }
    
    let root = TreeNode(preorder[0])
    
    if let index = inorder.firstIndex(of: preorder[0]) {
        if index >= 1 {
            root.left = buildTree(Array(preorder[1...index]),
                                  Array(inorder[0..<index]))
        }
        root.right = buildTree(Array(preorder[index + 1..<preorder.count]),
                               Array(inorder[index + 1..<inorder.count]))
    }
    
    return root
}

buildTree([3,9,20,15,7], [9,3,15,20,7])
