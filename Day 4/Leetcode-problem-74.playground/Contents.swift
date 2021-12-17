import UIKit

// https://leetcode.com/problems/search-a-2d-matrix/

func searchMatrixNotOptimised(_ matrix: [[Int]], _ target: Int) -> Bool {
   
    for i in 0..<matrix.count {
        for j in 0..<matrix.first!.count {
            if matrix[i][j] == target {
                return true
            }
        }
    }
    
    return false
}

let matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]]
searchMatrixNotOptimised(matrix, 11)
