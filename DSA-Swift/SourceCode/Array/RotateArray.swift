//
//  RotateArray.swift
//  DSA-Swift
//
//  Created by pramod yadav on 25/05/24.
//

import Foundation

class RotateArray : Executable{
    func excecute() {
        var arr = [1,2,3,4,5,6,7]
        print("Rotate array: \(self.rotate(&arr, 3))")
    }
    
    func rotate(_ nums: inout [Int], _ k: Int) {
        guard k>0 else {return}
        for _ in 0..<k{
//            let last = nums.last
//            nums.removeLast()
//            nums.insert(last ?? 0, at: 0)
//            nums[i] = nums[nums.count-1]
            nums.swapAt(0, nums.count-1)
        }
        print(nums)
    }
}
