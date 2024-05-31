//
//  Factorial.swift
//  DSA-Swift
//
//  Created by pramod yadav on 31/05/24.
//

import Foundation

class Factorial: Executable{
    func excecute() {
        print("Factorial Number: \(self.factorial(5))")
    }
    
    func factorial(_ n: Int) -> Int {
        
        //base case
        guard n > 1 else {return 1}
        
        //recursive fun
        let result = n*factorial(n-1)
        return result
    }
}
