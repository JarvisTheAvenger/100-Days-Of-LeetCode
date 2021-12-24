import Foundation

// https://leetcode.com/problems/sqrtx/

func mySqrt(_ x: Int) -> Int {
    return Int(sqrt(Double(x)))
}

func mySqrtWithBinarySearch(_ x: Int) -> Int {
    // Base Cases
    if (x == 0 || x == 1) {
        return x
    }
    
    // Do Binary Search for floor(sqrt(x))
    var start = 1
    var end = x
    var ans = 0
    
    while (start <= end) {
        var mid = (start + end) / 2
        
        // If x is a perfect square
        if (mid*mid == x) {
            return Int(mid)
        }
        
        // Since we need floor, we update answer when mid*mid is
        // smaller than x, and move closer to sqrt(x)
        if (mid*mid < x) {
            start = mid + 1
            ans = mid
        } else {
            // If mid*mid is greater than x
            end = mid-1
        }
    }
    
    return Int(ans)

}

mySqrt(2)
mySqrtWithBinarySearch(2)
