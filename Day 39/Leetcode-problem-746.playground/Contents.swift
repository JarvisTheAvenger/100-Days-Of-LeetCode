import Foundation

// https://leetcode.com/problems/min-cost-climbing-stairs/

func minCostClimbingStairs(_ cost: [Int]) -> Int {
    var dp = [Int](repeating: 0, count: cost.count+1)
    
    for i in 2...cost.count {
        dp[i] = min(dp[i-1] + cost[i-1], dp[i-2] + cost[i-2])
    }
    
    return dp[cost.count]
}

minCostClimbingStairs([1,100,1,1,1,100,1,1,100,1])
