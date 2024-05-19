//
//  Sheive.swift
//  DSA-Swift
//
//  Created by pramod yadav on 19/05/24.
//

import Foundation

class Sheive: Executable{
    func excecute() {
        print("Number prime less than 10 is : \(self.countPrimes(10))")
    }
    
    func countPrimes(_ n: Int) -> Int {
        guard n > 1 else{return 0}
        if n == 2{
            return 0
        }
        var count = 1
        for i in 2..<n{
            print("i = \(i)")
            if (i%2 == 0){
                count = count + 1
            }
        }
        return count
    }
}
