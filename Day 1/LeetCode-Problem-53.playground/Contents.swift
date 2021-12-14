import UIKit

// https://leetcode.com/problems/maximum-subarray/

func maxSubArray(_ nums: [Int]) -> Int {
    guard nums.count > 0 else { return -1 }
    
    var sum = 0
    var maximum = nums.first!
    
    for element in nums {
        if sum < 0 { sum = 0 }
        sum += element
        maximum = max(sum, maximum)
    }
    
    return maximum
}

maxSubArray([-2,1,-3,4,-1,2,1,-5,4])
