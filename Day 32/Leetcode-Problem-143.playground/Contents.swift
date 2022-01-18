import Foundation

// https://leetcode.com/problems/reorder-list/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

// Brute force method
func reorderList(_ head: ListNode?) {
    
    if head == nil { return }
    
    var nodes = [ListNode?]()
    
    var head = head
    
    while head != nil {
        nodes.append(head)
        head = head?.next
    }
    
    var i = 0
    var j = nodes.count - 1
    
    var result = [ListNode?]()
    
    while i <= j {
        result.append(nodes[i])
        result.append(nodes[j])
        
        i += 1
        j -= 1
    }
    
    for idx in 0..<result.count {
        if idx == result.count - 1 {
            result[idx]?.next = nil
        } else {
            result[idx]?.next = result[idx+1]
        }
    }
    
    
    head = result.first ?? nil
}
