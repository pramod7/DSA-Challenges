//
//  NToOne.swift
//  DSA-Swift
//
//  Created by pramod yadav on 31/05/24.
//

import Foundation

class NToOne: Executable{
    func excecute() {
        self.printz(7)
    }
    
    func printz(_ n: Int) {
        
        //base case
        if n == 1{
            print("Return n \(n)")
            return
        }
        
        //recursive call
        printz(n-1)
        print(n)
    }
}
