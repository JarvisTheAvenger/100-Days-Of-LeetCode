import Foundation

// https://leetcode.com/problems/symmetric-tree/

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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        guard root != nil else { return false }
        
        var queue = [root]
        
        while !queue.isEmpty {
            var temp = [TreeNode?]()
            
            for element in queue {
                if element != nil {
                  temp.append(element!.left)
                  temp.append(element!.right)
                }
            }
            
            var i = 0
            var j = temp.count-1
            
            while i < j  {
                if temp[i]?.val == temp[j]?.val {
                    i += 1
                    j -= 1
                } else {
                    return false
                }
            }
            
            queue = temp
        }
        
        return true
        
    }
}
