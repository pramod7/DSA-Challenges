//
//  SingleNumber.swift
//  DSA-Swift
//
//  Created by pramod yadav on 22/05/24.
//

import Foundation

class SingleNumber : Executable{
    func excecute() {
        print("Single Number: \(self.singleNumber([1,2,3,4]))")
    }
    
    func singleNumber(_ nums: [Int]) -> Int {
        guard nums.count > 1 else{ return nums[0] }
        
        for i in 1..<nums.count{
            
        }
        return 0
    }
}
