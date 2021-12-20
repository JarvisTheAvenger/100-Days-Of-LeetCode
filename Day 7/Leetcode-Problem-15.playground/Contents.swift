import UIKit

// https://leetcode.com/problems/3sum/

func threeSum(_ nums: [Int]) -> [[Int]] {
    let array = nums.sorted()
    var result = [[Int]]()
    
    for currentIdx in 0..<array.count {
        var left = currentIdx + 1
        var right = array.count - 1
        
        while left < right {
            let currentSum = array[currentIdx] + array[left] + array[right]
            
            if currentSum > 0 {
                right -= 1
            } else if currentSum < 0 {
                left += 1
            } else if currentSum == 0 {
                let val = [array[currentIdx], array[left], array[right]]
                
                if !result.contains(val) {
                    result.append([array[currentIdx], array[left], array[right]])
                }
                
                right -= 1
                left += 1
            }
        }
    }
    
    return result
}

threeSum([-1,0,1,2,-1,-4])
