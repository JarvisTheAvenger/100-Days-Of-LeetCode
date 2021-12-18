import UIKit

// https://leetcode.com/problems/reverse-integer/

func reverseStringConversion(_ x: Int) -> Int {
    var number = x.magnitude
    
    var string = ""
    
    while number > 0 {
        let remainder = number % 10
        string += String(remainder)
        number = number / 10
    }
    
    let reversedInteger = Int(string)!
    
    return x.signum() == -1 ? -(reversedInteger) : reversedInteger
}


func reverse(_ x: Int) -> Int {
    var unsignedX = abs(x)
    
    var reverse = 0
    
    while unsignedX > 0 {
        let remainder = unsignedX % 10
        unsignedX /= 10
        
        reverse = reverse * 10 + remainder
        
        if reverse > Int32.max {
            return 0
        }
    }
    
    if x < 0 {
        reverse *= -1
    }
    
    return reverse
}

reverse(123)
