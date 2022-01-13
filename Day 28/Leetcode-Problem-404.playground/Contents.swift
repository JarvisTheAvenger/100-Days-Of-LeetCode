import Foundation

// https://leetcode.com/problems/sum-of-left-leaves/

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
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        var sum = 0
        
        func traverseTree(_ node: TreeNode?, _ isLeftNode: Bool) {
            guard let node = node else { return }

            if node.left == nil && node.right == nil && isLeftNode {
                sum += node.val
            }
            
            traverseTree(node.left, true)
            traverseTree(node.right, false)
        }
        
        traverseTree(root, false)
        
        return sum
        
    }
}
