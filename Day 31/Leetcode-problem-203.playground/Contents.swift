import Foundation

// https://leetcode.com/problems/remove-linked-list-elements/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
    guard head != nil else { return head }
    
    var nodes = [ListNode?]()
    
    var head = head
    
    while head != nil {
        nodes.append(head)
        head = head?.next
    }
    
    let filtered = nodes.filter { $0?.val != val }
    
    for index in 0..<filtered.count {
        
        if index == filtered.count-1 {
            filtered[index]?.next = nil
        } else {
            filtered[index]?.next = filtered[index+1]
        }
        
    }
    
    return filtered.first ?? nil
}
