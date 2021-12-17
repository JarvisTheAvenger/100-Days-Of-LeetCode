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

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    guard !matrix.isEmpty else { return false }
    
    let column = matrix.first!.count
    let row = matrix.count
    
    var left = 0
    var right = column * row - 1

    while left <= right {
        let midPoint = left + (right-left) / 2
        
        let resultRow = midPoint / column
        let resultColumn = midPoint % column
        
        let midElement = matrix[resultRow][resultColumn]
                
        if midElement == target {
            return true
        } else if midElement < target {
            left = midPoint + 1
        } else if midElement > target {
            right = midPoint - 1
        }
        
    }
    
    return false
}


let matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]]
searchMatrix(matrix, 3)
