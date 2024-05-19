//
//  Sheive.swift
//  DSA-Swift
//
//  Created by pramod yadav on 19/05/24.
//

import Foundation

class TwoSum: Executable{
    func excecute() {
        print("Number prime less than 10 is : \(self.twoSum([3,2,4], 6))")
    }
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        
        for (index, value) in nums.enumerated() {
            //Checks if the current value (value) exists in the dictionary dict as a key. If it exists, it means we have previously encountered a number such that the current number and the previously encountered number add up to the target.
            if let addent = dict[value] {
                return [addent, index]
            } else {
                dict[target - value] = index
            }
        }
        
        return []
    }
}
