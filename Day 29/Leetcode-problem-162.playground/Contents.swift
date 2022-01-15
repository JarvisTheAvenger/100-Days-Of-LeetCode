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
    guard nums.count <= 1 else { return -1 }
    
    let left =  0
    let right = nums.count-1

    return findPeak(nums, left: left, right: right)
}

func findPeak(_ nums: [Int], left: Int, right: Int) -> Int {
    // 1. find the mid element
    let mid = left + (right-left) / 2
    print(mid)
    
    // 2. find if left and right of mid is not out of bound
    let i = mid-1
    let j = mid+1
    
    
    if i < 0 && j < nums.count-1 {
        // 3. check if mid element is a peak
        if nums[mid] > nums[i] && nums[mid] > nums[j] {
            return mid
        }
    }
    
    findPeak(nums, left: mid+1, right: nums.count-1)
    findPeak(nums, left: 0, right: mid-1)
    
    return -1
}

findPeakElement([1,2,1,3,5,6,4])
