import Foundation

// https://practice.geeksforgeeks.org/problems/kth-smallest-element5635/1

func findKthSmallestElement(_ array: [Int], k: Int) -> Int {
    let result = array.sorted(by: <)
    return result[k-1]
}

findKthSmallestElement([7, 10, 4, 3, 20, 15], k: 3)
