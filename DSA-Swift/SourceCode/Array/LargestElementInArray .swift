//
//  LargestElementInArray .swift
//  DSA-Swift
//
//  Created by pramod yadav on 21/05/24.
//

import Foundation

class LargestElementInArray : Executable{
    func excecute() {
        print("Largest Element in Array  : \(self.largest([1, 8, 7, 56, 90], _n: 5))")
    }
    
    func largest(_ arr: [Int], _n: Int) -> Int {
        
        var max = 0
        for i in 0..<arr.count{
            if max < arr[i] && max != arr[i]{
                max = arr[i]
            }
        }
        return max
    }
}
