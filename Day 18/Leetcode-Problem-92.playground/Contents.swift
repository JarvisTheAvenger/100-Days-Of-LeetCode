import Foundation

// https://leetcode.com/problems/reverse-linked-list-ii/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
 

func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
    if head == nil || left == right { return head }

    var prev : ListNode?
    var current = head
    
    var count = 1
    
    // find out previous node of left
    while count != left {
        prev = current
        current = current?.next
        count += 1
    }
    
    // find out next element of right
    let start = current
    while count != right {
        current = current?.next
        count += 1
    }

    // hold next of previous and set right's next to nil
    let rest = current?.next
    current?.next = nil
    
    // reverse linked list between left and right (inclusive of left and right)
    let newHead = reverseLinkedList(start)
    
    if prev != nil {
        prev?.next = newHead
    }
    
    current = newHead
    
    // traverse through end of the linked list
    while current?.next != nil {
        current = current?.next
    }
    
    // set end of the linked list node's next to right's next
    current?.next = rest
    
    if left == 1 {
        return newHead
    }
            
    return head
}

func reverseLinkedList(_ head: ListNode?) -> ListNode? {
    var prev: ListNode?
    var current = head
    
    while current != nil {
        let next = current?.next
        current?.next = prev
        prev = current
        current = next
    }
    
    return prev
}
