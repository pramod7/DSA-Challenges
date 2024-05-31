//
//  FibonacciNumber.swift
//  DSA-Swift
//
//  Created by pramod yadav on 30/05/24.
//

import Foundation

class FibonacciNumber: Executable{
    func excecute() {
        print("Fibonacci Result: \(self.fib(4))")
    }
    
    func fib(_ n: Int) -> Int {
        
        //base case
        guard n > 1 else {return n}
        
        //recursive function
        var nums = Array(repeating: 0, count: n+1)
        nums[1] = 1
        
        for i in 2..<nums.count {
            nums[i] = nums[i-1] + nums[i-2]
        }
        
        return nums[n]
        
//        //Base case
//        print(n)
//        guard n > 1 else { return n }
//
//        //Recursive function
//        return fib(n-1) + fib(n-2)
    }
}
