import Foundation

// https://leetcode.com/problems/binary-tree-level-order-traversal/

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
 

func levelOrder(_ root: TreeNode?) -> [[Int]] {
    guard root != nil else { return [] }
    
    var queue = [root]
    var result = [[Int]]()
    
    while !queue.isEmpty {
        var levelNodes = [TreeNode?]()
        var visitedNodes = [Int]()
        
        for node in queue {
            if let tempNode = node {
                levelNodes.append(tempNode.left)
                levelNodes.append(tempNode.right)
                visitedNodes.append(tempNode.val)
            }
        }
        
        queue = levelNodes
        
        if !visitedNodes.isEmpty {
          result.append(visitedNodes)
        }
    }
            
    return result
}
