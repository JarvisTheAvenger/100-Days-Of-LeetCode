import Foundation

// https://leetcode.com/problems/kth-largest-element-in-an-array/

func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
   let result = nums.sorted(by: >)
   return result[k-1]
}

findKthLargest([3,2,1,5,6,4], 3)
