import UIKit

// https://leetcode.com/problems/two-sum/

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
   var dict = [Int:Int]()
    
    for (idx, element) in nums.enumerated() {
        let value = target - element
        
        if let x = dict[value] {
            return [x, idx]
        }
        
        dict[element] = idx
    }
    
    return []
}

var nums = [2,7,11,15]
var target = 9

twoSum(nums, target)
