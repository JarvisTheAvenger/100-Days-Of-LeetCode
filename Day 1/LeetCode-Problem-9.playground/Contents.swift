import UIKit

// https://leetcode.com/problems/palindrome-number/

func isPalindrome(_ x: Int) -> Bool {
    let xString = String(x)
    print(xString)
    return xString == String(xString.reversed())
}

func isPalindromeWithoutString(_ x: Int) -> Bool {
    guard x.signum() != -1 else {
        return false
    }
    
    var number = x
    var digits = [Int]()
    
    while number > 0 {
        let remainder = number % 10
        digits.append(remainder)
        number = number / 10
    }
    
    return digits == digits.reversed()
}

isPalindrome(-121)
isPalindromeWithoutString(131)
