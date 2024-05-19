//
//  SmallestEvenNumber.swift
//  DSA-Swift
//
//  Created by pramod yadav on 19/05/24.
//

import Foundation

class SmallestEvenNumber: Executable{
    func excecute() {
        print(self.smallestEvenMultiple(5))
    }
    
    func smallestEvenMultiple(_ n: Int) -> Int {
        return (n%2==0) ?n:n*2
    }
}
