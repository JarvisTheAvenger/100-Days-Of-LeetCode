import UIKit

// https://leetcode.com/problems/merge-two-sorted-lists/

  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }

class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        
        if list1 == nil { return list2 }
        if list2 == nil { return list1 }
        
        var head1 = list1
        var head2 = list2
        
        var mergedHead: ListNode? = nil
        
        if (head1?.val ?? -1 <= head2?.val ?? -1) {
            mergedHead = head1
            head1 = head1?.next
        } else {
            mergedHead = head2
            head2 = head2?.next
        }
        
        var prev: ListNode? = mergedHead
        
        // Input: list1 = [1,2,4], list2 = [1,3,4]
        
        while head1 != nil && head2 != nil {
            
            if head1!.val <= head2!.val {
                prev?.next = head1
                head1 = head1?.next
            } else {
                prev?.next = head2
                head2 = head2?.next
            }
            
            prev = prev?.next
        }
        
        if head1 != nil {
            prev?.next = head1
        }
        
        if head2 != nil {
            prev?.next = head2
        }
        
        return mergedHead
    }
}
