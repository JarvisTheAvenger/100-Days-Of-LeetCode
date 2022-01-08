import Foundation

// https://leetcode.com/problems/populating-next-right-pointers-in-each-node/


public class Node {
    public var val: Int
    public var left: Node?
    public var right: Node?
    public var next: Node?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
        self.next = nil
    }
}


class Solution {
    func connect(_ root: Node?) -> Node? {
        root?.next = nil
        var queue = [root]
        
        while !queue.isEmpty {
            var result = [Node?]()
            
            for element in queue {
                if element != nil {
                    result.append(element?.left)
                    result.append(element?.right)
                }
            }
            
            for index in 0..<result.count {
                if index == result.count-1 {
                    result[index]?.next = nil
                } else {
                    result[index]?.next = result[index+1]
                }
            }
            
            queue = result
        }
        
        return root
    }
    
    func connectWithoutExtraMemory(_ root: Node?) -> Node? {
        var levelStart = root

        while levelStart != nil {
            var current = levelStart
            
            while current != nil {
                
                if current?.left != nil {
                    current?.left?.next = current?.right
                }
                
                if current?.right != nil && current?.next != nil {
                    current?.right = current?.next?.left
                }
                
                current = current?.next
            }
            
            levelStart = levelStart?.next
        }

        return root
    }
}
