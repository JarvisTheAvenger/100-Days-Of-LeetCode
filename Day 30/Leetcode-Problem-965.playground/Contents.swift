import Foundation

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
    func isUnivalTree(_ root: TreeNode?) -> Bool {
        guard let root = root else { return false }
        var queue: [TreeNode?] = [root]
        var result = [Int]()
        
        while !queue.isEmpty {
            var temp = [TreeNode?]()
            
            for element in queue {
                if element != nil {
                    result.append(element!.val)
                    temp.append(element!.left)
                    temp.append(element!.right)
                }
            }
            
            queue = temp
        }
        
        return Set(result).count == 1
    }
}

