//
//  PascalTriangle.swift
//  DSA-Swift
//
//  Created by pramod yadav on 31/05/24.
//

import Foundation

class PascalTriangle: Executable{
    func excecute() {
        print("Pascal Triangle: \(self.nthPositionPascalTriangle(5, 1))")//print specific position(row, col)
        self.printNthRow(6)//print specific full row
        print("Full pascal triangle: \(self.generate(5))")//generate full triangle
    }
    
    func nthPositionPascalTriangle(_ row: Int, _ col: Int) -> Int{
        
        var res = 1
        for i in 0..<col {
            res = res * (row-i)
            res = res / (i+1)
        }
        return res
    }
    
    func printNthRow(_ row: Int) {
        
        var res = 1
        print(res)
        for i in 1..<row{
            res = res*(row-i)
            res = res/i
            print(res)
        }
    }
    
    func generate(_ numRows: Int) -> [[Int]] {
        var arrResult = [[Int]]()
        for i in 1..<numRows+1{
            var arrInnerRes = [Int]()
            var res = 1
            arrInnerRes.append(res)
            for j in 1..<i{
                res = res*(i-j)
                res = res/j
                arrInnerRes.append(res)
            }
            arrResult.append(arrInnerRes)
        }
        return arrResult
    }
}
