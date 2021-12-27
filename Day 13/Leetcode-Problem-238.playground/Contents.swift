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


func productExceptSelfWithoutExtraSpace(_ nums: [Int]) -> [Int] {
    var result = [Int]()
    var product = 1
    
    for num in nums {
        product *= num
        result.append(product)
    }
        
    product = 1
    
    for idx in Array((0..<nums.count).reversed()) {
        if idx != 0 {
            result[idx] = result[idx-1] * product
            product *= nums[idx]
        }
    }
    
    result[0] = product
        
    return result
}


productExceptSelfWithoutExtraSpace([1,2,3,4])
