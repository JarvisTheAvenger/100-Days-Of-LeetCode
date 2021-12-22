import UIKit

// https://leetcode.com/problems/palindrome-linked-list

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var tempHead = head
        
        var nodes = [ListNode?]()
        
        while tempHead != nil {
            nodes.append(tempHead)
            tempHead = tempHead?.next
        }
        
        var i = 0
        var j = nodes.count - 1
        
        while i < j {
            
            if nodes[i]?.val ?? -1 == nodes[j]?.val {
                i += 1
                j -= 1
            } else {
                return false
            }
            
        }
        
        return true
    }
}
