//
//  CountPrime.swift
//  DSA-Swift
//
//  Created by pramod yadav on 19/05/24.
//

import Foundation

class ReverseInteger: Executable{
    func excecute() {
        print(self.reverse(123))
    }
    
    func reverse(_ x: Int) -> Int {
        
        var ans = 0
        var input = x
        while (input != 0){
            ans = (ans*10)+(input%10)
            input /= 10
        }
        return (ans > Int(Int32.max) || ans < Int(Int32.min)) ?0:ans
    }
}
