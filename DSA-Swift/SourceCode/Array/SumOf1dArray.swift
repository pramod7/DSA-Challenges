//
//  RemoveDublicate .swift
//  DSA-Swift
//
//  Created by pramod yadav on 22/05/24.
//

import Foundation

class SumOf1dArray : Executable{
    func excecute() {
        print("Running Sum : \(self.runningSum([1,2,3,4]))")
    }
    
    func runningSum(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else{ return nums }
        
        var arrNums = nums
        for i in 1..<arrNums.count{
            arrNums[i] = arrNums[i - 1] + arrNums [i]
        }
        return arrNums
    }
}
