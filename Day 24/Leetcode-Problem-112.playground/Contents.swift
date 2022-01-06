import Foundation

// https://leetcode.com/problems/path-sum/

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
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        if root == nil {
            return false
        }
        
        var isPathFound = false
        
        func traverse(_ node: TreeNode?, _ remainingTargetSum: Int) {
            guard let node = node else { return }
            
            if node.left == nil && node.right == nil {
                if remainingTargetSum - node.val == 0 {
                    isPathFound = true
                }
            }
            
                        
            let tempSum = remainingTargetSum - node.val
            
            traverse(node.left, tempSum)
            traverse(node.right, tempSum)
        }
        
        traverse(root, targetSum )
        
        return isPathFound
        
    }
}
