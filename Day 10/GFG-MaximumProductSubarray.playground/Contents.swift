import Foundation

// https://practice.geeksforgeeks.org/problems/maximum-product-subarray3604/1
// https://leetcode.com/problems/maximum-product-subarray/

func maxProduct(_ nums: [Int]) -> Int {
    var maximum = nums.first!
    var product = 1
    
    for element in nums {
        product *= element
        maximum = max(product, maximum)
                
        if product == 0 { product = 1 }
    }
    
    product = 1
    
    for element in nums.reversed() {
        product *= element
        maximum = max(product, maximum)
        
        if product == 0 { product = 1 }
    }
    
    return maximum
}

// -2,0,-1
// 3,-1,4 --> 4
// -3, -1, -4
maxProduct([-3,-1,-4])

