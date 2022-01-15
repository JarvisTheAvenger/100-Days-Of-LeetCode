import Foundation

// https://leetcode.com/problems/find-peak-element/

//Brute Force Method
func findPeakElementBruteForceMethod(_ nums: [Int]) -> Int {
    if nums.count == 1 { return 0 }
    
    if nums.count == 2 {
       return nums[0] > nums[1] ? 0 : 1
    }
    
    for index in 0..<nums.count {
        
        if index == 0 {
           if nums[index] > nums[index+1] {
               return index
           }
        }
        
        if index == nums.count-1 {
            if nums[index] > nums[index-1] {
                return index
            }
        }
        
       if nums[index] > nums[index+1] && nums[index] > nums[index-1] {
         return index
       }
        
    }
    
    return -1
}


func findPeakElement(_ nums: [Int]) -> Int {
    var left =  0
    var right = nums.count-1
    
    while left < right {
        let mid = left + (right-left) / 2
        
        if nums[mid] > nums[mid+1] {
            left = mid + 1
        } else {
            right = mid
        }
    }

    return left
}


findPeakElement([1,2,1,3,5,6,4])
