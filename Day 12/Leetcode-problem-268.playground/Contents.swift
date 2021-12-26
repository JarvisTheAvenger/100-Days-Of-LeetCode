import Foundation

// https://leetcode.com/problems/missing-number/

func missingNumber(_ nums: [Int]) -> Int {
    let sortedNums = nums.sorted()
    
    var count = 0
    
    for index in 0...sortedNums.count {
        
        if index > sortedNums.count-1 {
            return index
        }
        
        if sortedNums[index] != count {
            return count
        }
        
        count += 1
    }
    
    return -1
}

func missingNumberWithoutExtraSpace(_ nums: [Int]) -> Int {
    var sum = 0
    for el in nums { sum += el }
    let n = nums.count
    return (n * (n+1)) / 2 - sum
}

//missingNumber([9,6,4,2,3,5,7,0,1])
missingNumberWithoutExtraSpace([9,6,4,2,3,5,7,0,1])
