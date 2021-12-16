import UIKit

// https://leetcode.com/problems/find-the-duplicate-number/

func findDuplicateWithExtraSpace(_ nums: [Int]) -> Int {
    var map = [Int:Int]()

    for num in nums {
        if let _ = map[num] {
            return num
        } else {
            map[num] = 1
        }
    }
    
    return -1
}

func findDuplicate(_ nums: [Int]) -> Int {
    var slow = 0
    var fast = 0
    
    while true {
        slow = nums[slow]
        fast = nums[nums[fast]]
        
        if slow == fast {
            break
        }
    }
    
    fast = 0
    
    while slow != fast {
        slow = nums[slow]
        fast = nums[fast]
    }
    
    return fast
}



findDuplicate([1,2,1,3,4])
