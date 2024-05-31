//
//  OneToN.swift
//  DSA-Swift
//
//  Created by pramod yadav on 31/05/24.
//

import Foundation

class OneToN: Executable{
    func excecute() {
        self.printReverse(7)
    }
    
    func printReverse(_ n: Int) {
        
        //base case
        guard n > 1 else{
            print("Reverse \(n)")
            return
        }
        
        //recursive call
        print("Reverse \(n)")
        printReverse(n-1)
    }
}
