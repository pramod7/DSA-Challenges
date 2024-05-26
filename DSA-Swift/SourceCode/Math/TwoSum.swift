//
//  Sheive.swift
//  DSA-Swift
//
//  Created by pramod yadav on 25/05/24.
//

import Foundation

class TwoSum: Executable{
    func excecute() {
        print("2 Sum : \(self.twoSum([3,2,4], 6))")
    }
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//        var dict = [Int: Int]()
//
//        for (index, value) in nums.enumerated() {
//            //Checks if the current value (value) exists in the dictionary dict as a key. If it exists, it means we have previously encountered a number such that the current number and the previously encountered number add up to the target.
//            if let addent = dict[value] {
//                return [addent, index]
//            } else {
//                dict[target - value] = index
//            }
//        }
//
//        return []
        
        let numbers = nums.sorted()
        var i = 0
        var j = numbers.count-1
        
        while i<j {
            let sum = numbers[i] + numbers[j]
            if sum > target{
                j -= 1
            }else if sum < target{
                i += 1
            }else{
                return [i, j]
            }
        }
        return []
    }
}
