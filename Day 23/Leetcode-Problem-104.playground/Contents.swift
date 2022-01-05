import Foundation

// https://leetcode.com/problems/maximum-depth-of-binary-tree/

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
 

class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        if (root == nil) {
            return 0
        }
        
        let left_depth = maxDepth(root?.left)
        let right_depth = maxDepth(root?.right)
        
        return max(left_depth, right_depth) + 1
    }
}
