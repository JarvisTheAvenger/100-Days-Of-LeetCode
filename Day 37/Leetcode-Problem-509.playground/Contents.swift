import Foundation

// https://leetcode.com/problems/fibonacci-number/

func fib(_ n: Int) -> Int {
    if n == 1 || n == 0 {
        return n
    }

    return fib(n-2) + fib(n-1)
}

fib(4)
