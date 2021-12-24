import Foundation

// https://leetcode.com/problems/fizz-buzz/

func fizzBuzz(_ n: Int) -> [String] {
    var result = [String]()
    
    for num in 1...n {
        if num % 3 == 0 && num % 5 == 0 {
            result.append("FizzBuzz")
        } else if num % 3 == 0 {
            result.append("Fizz")
        } else if num % 5 == 0 {
            result.append("Buzz")
        } else {
            result.append("\(num)")
        }
    }
    
    return result
}

fizzBuzz(3)
