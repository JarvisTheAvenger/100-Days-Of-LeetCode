import Foundation

// https://practice.geeksforgeeks.org/problems/maximum-product-subarray3604/1

func maximumProductSubArray(_ array: [Int]) -> Int {
    var maximum = array.first!
    var product = 1
    
    for element in array {
        if product == 0 { product = 1 }
        product *= element
        maximum = max(product, maximum)
    }
    
    return maximum
}

maximumProductSubArray([2, 3, 4, 5, -1, 0])
