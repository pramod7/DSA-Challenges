//
//  ClimbingStairs.swift
//  DSA-Swift
//
//  Created by pramod yadav on 30/05/24.
//

import Foundation

class ClimbingStairs: Executable{
    func excecute() {
        print("Climbing Stairs: \(self.climbStairs(3))")
    }
    
    func climbStairs(_ n: Int) -> Int {
        
        //base case
        if n == 1{
            return 0
        }
        
        //recursive call
        let ans = climbStairs(n-1) + climbStairs(n-2)
        return ans
    }
}
