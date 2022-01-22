import Foundation

// https://leetcode.com/problems/number-of-1-bits/


// brute force
func hammingWeight(_ n: Int) -> Int {
    let str = String(n, radix: 2)
    var count = 0
    
    for char in str {
        if String(char) == "1" {
            count += 1
        }
    }
    
    return count
}

// bit manupulation

func hammingWeight1(_ n: Int) -> Int {
    var count = 0
    var n = n
    
    while n > 0 {
        n &= n - 1
        count += 1
    }
    
    return count
}
