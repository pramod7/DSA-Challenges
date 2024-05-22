//
//  SumOf1dArray .swift
//  DSA-Swift
//
//  Created by pramod yadav on 22/05/24.
//

import Foundation

class RemoveDublicate : Executable{
    func excecute() {
        var arr = [0,0,1,1,1,2,2,3,3,4]
        print("Remove Dublicate : \(self.removeDuplicates(&arr))")
    }
    
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 1 else{ return 1 }
        let count = nums.count
        var keep = 1
        for i in 1..<count{
            if nums[i &- 1] != nums[i]{
                nums[keep] = nums[i]
                keep += 1
            }
        }
        nums.removeLast(count &- keep)
        return keep
    }
}
