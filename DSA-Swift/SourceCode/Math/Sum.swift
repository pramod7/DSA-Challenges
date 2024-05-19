//
//  Sum.swift
//  DSA-Swift
//
//  Created by pramod yadav on 19/05/24.
//

import Foundation

class Sum: Executable{
    func excecute() {
        print(self.sum(12, 5))
    }
    
    func sum(_ num1: Int, _ num2: Int) -> Int {
        return num1 + num2
    }
}
