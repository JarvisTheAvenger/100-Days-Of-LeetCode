import Foundation

// https://leetcode.com/problems/product-of-array-except-self/

func productExceptSelf(_ nums: [Int]) -> [Int] {
    var left = [Int]()
    var right = [Int]()
    
    var result = [Int]()
    
    var leftProduct = 1
    
    for num in nums {
        leftProduct *= num
        left.append(leftProduct)
    }
    
    print(left)
    
    var rightProduct = 1
    
    for num in nums.reversed() {
        rightProduct *= num
        right.append(rightProduct)
    }
    
    right = right.reversed()
        
    for idx in 0..<nums.count {
        if idx == 0 {
            result.append(right[1])
        } else if idx == nums.count - 1 {
            result.append(left[nums.count-2])
        } else {
            let temp = left[idx-1] * right[idx+1]
            result.append(temp)
        }
    }
        
    return result
}

productExceptSelf([-1,1,0,-3,3])
