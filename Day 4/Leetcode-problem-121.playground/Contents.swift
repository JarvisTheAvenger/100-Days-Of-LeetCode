import UIKit

// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

func maxProfit(_ prices: [Int]) -> Int {
    var maximum = 0
    var min = Int.max
    
    for (idx, price) in  prices.enumerated() {
        if price < min {
            min = price
        } else {
            maximum = max(maximum, price-min)
        }
    }
    
    return maximum
}

maxProfit([7,1,5,3,6,4])
