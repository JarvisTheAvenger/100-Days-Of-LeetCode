import Foundation

// https://leetcode.com/problems/powx-n/

func myPow(_ x: Double, _ n: Int) -> Double {
    if n == 0 || x == 1 {
        return 1
    }
    
    if x == -1 && n % 2 != 0 {
        return -1
    }
    
    if x == -1 && n % 2 == 0 {
        return 1
    }

    var product = 1.0

    for _ in 1...n.magnitude {
        product *= x
    }


    if n < 0 {
        return 1 / product
    }

    return product
}

myPow(1.00000, -2147483648)
