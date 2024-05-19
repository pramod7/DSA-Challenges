//
//  CommonFactor.swift
//  DSA-Swift
//
//  Created by pramod yadav on 19/05/24.
//

import Foundation

class CommonFactor: Executable{
    func excecute() {
        print(self.commonFactors(12, 6))
    }
    
    func commonFactors(_ a: Int, _ b: Int) -> Int {
        var count = 0
        let min = min(a, b)
        for i in 1..<min+1{
            if (a%i == 0 && b%i == 0){
                count += 1
            }
        }
        return count
    }
}
