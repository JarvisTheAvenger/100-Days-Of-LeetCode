import UIKit

// https://leetcode.com/problems/palindrome-number/

func isPalindrome(_ x: Int) -> Bool {
    let xString = String(x)
    return xString == String(xString.reversed())
}

isPalindrome(122)
