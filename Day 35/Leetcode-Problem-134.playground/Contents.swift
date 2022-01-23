import Foundation

// https://leetcode.com/problems/gas-station/

func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
    
    var totalGas = 0
    var totalCost = 0
    
    for g in gas {
        totalGas += g
    }
    
    for c in cost {
        totalCost += c
    }
    
    if totalCost > totalGas {
        return -1
    }
    
    var start = 0
    var current = 0
    
    for idx in 0..<gas.count {
        current += gas[idx] - cost[idx]
        
        if current < 0 {
            start = idx + 1
            current = 0
        }

    }
    
    return start
    
}

let gas = [1,2,3,4,5]
let cost = [3,4,5,1,2]

canCompleteCircuit(gas, cost)
