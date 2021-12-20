import UIKit

// https://leetcode.com/problems/merge-sorted-array/

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var i = m-1
    var j = n-1
    var replaceIndex = nums1.count-1
    
    while j >= 0 {
        if i >= 0 && nums1[i] > nums2[j] {
            nums1[replaceIndex] = nums1[i]
            
            i -= 1
            replaceIndex -= 1
        } else {
            nums1[replaceIndex] = nums2[j]
            
            j -= 1
            replaceIndex -= 1
        }
    }
                    
}


var num1 = [1,2,3,0,0,0]
var num2 = [2,5,6]


merge(&num1, 3, num2, 3)
