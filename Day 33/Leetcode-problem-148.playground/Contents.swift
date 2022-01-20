import Foundation
import Darwin

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
 
class Solution {
    func sortList(_ head: ListNode?) -> ListNode? {
        if head == nil { return head }
        
        var head = head
        
        var array = [ListNode]()
        
        while head != nil {
            array.append(head!)
            head = head?.next
        }
        
        array.sort { l1, l2 in
            l1.val < l2.val
        }
        
        for index in 0..<array.count {
            if index == array.count - 1 {
                array[index].next = nil
            } else {
                array[index].next = array[index+1]
            }
        }
        
        return array.first ?? nil
    }
}
