//
//  MaximumSubArray.swift
//  DSA-Swift
//
//  Created by pramod yadav on 26/05/24.
//

import Foundation

class MaximumSubArray : Executable{
    func excecute() {
        print("Maximum sub array: \(self.maxSubArray([-2,1,-3,4,-1,2,1,-5,4]))")
    }
    
    func maxSubArray(_ nums: [Int]) -> Int {
        var best = nums[0];
        var current = nums[0];
        
        for i in 1..<nums.count {
            current = max(current + nums[i], nums[i]);
            best = max(current, best);
        }
        
        return best;
    }
}
