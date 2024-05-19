//
//  PivotIndex.swift
//  DSA-Swift
//
//  Created by pramod yadav on 19/05/24.
//

import Foundation

class PivotIndex: Executable{
    func excecute() {
        print(self.pivotIndex([1,7,3,6,5,6]))
    }
    
    func pivotIndex(_ nums: [Int]) -> Int {
        
        var totalSum = 0
        for i in 0..<nums.count{
            totalSum = totalSum + nums[i]
        }
        
        var leftSum = 0
        for i in 0..<nums.count{
            leftSum = leftSum + nums[i]
            
            if (totalSum - leftSum == leftSum - nums[i]){
                return i
            }
        }
        return -1
    }
}
