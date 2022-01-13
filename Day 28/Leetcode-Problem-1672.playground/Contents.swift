import Foundation

// https://leetcode.com/problems/richest-customer-wealth/

func maximumWealth(_ accounts: [[Int]]) -> Int {
    
    var maximumBalance = 0
    
    for account in accounts {
        var sum  = 0
      
        for balance in account {
            sum += balance
        }
        
        maximumBalance = max(maximumBalance, sum)
    }
    
    return maximumBalance
}

maximumWealth([[1,2,3],[3,2,1]])
