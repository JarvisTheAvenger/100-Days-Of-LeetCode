import Foundation

// https://leetcode.com/problems/n-th-tribonacci-number/

func tribonacci(_ n: Int) -> Int {
    if n == 0 || n == 1 {
        return n
    }
    
    if n == 2 {
        return 1
    }
    
    var memo = Array(repeating: 0, count: n + 1)
    memo[0] = 0
    memo[1] = 1
    memo[2] = 1

    for i in 3...n {
        memo[i] = memo[i-1] + memo[i-2] + memo[i-3]
    }

    return memo[n]
}

tribonacci(4)
