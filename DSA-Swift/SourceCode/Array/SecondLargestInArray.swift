//
//  LargestElementInArray .swift
//  DSA-Swift
//
//  Created by pramod yadav on 21/05/24.
//

import Foundation

class SecondLargestInArray : Executable{
    func excecute() {
        print("Second Largest Element in Array  : \(self.print2largest([12, 35, 1, 10, 34, 1], _n: 34))")
    }
    
    func print2largest(_ arr: [Int], _n: Int) -> Int {
        
        var max = -1
        var secondMax = -1
        for i in 0..<arr.count{
            if arr[i] > max{
                secondMax = max
                max = arr[i]
            }
            else if(arr[i] > secondMax && arr[i] != max){
                secondMax = arr[i]
            }
        }
        return secondMax
    }
}
