import Foundation

// https://leetcode.com/problems/climbing-stairs/

func climbStairs(_ n: Int) -> Int {
    if n < 2 { return 1 }
    var arr = [Int](repeating: 1, count: n + 1)
    
    for i in 2..<arr.count {
        arr[i] = arr[i - 1] + arr[i - 2]
    }
    
    return arr.last!
}

climbStairs(45)
