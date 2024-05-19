//
//  StringMultyply.swift
//  DSA-Swift
//
//  Created by pramod yadav on 19/05/24.
//

import Foundation

class StringMultyply: Executable{
    func excecute() {
        print(self.multiply("2", "3"))
    }
    
    func multiply(_ num1: String, _ num2: String) -> String {
        guard num1 != "0", num2 != "0" else {return "0"}
        
        var arr = Array(repeating: 0, count: num1.count + num2.count)
        var result = ""
        
        //reverse a collection without allocating new space
        for (i1,n1) in num1.reversed().enumerated() {
            for (i2,n2) in num2.reversed().enumerated() {
                arr[i1 + i2] += Int(String(n1))! * Int(String(n2))!
            }
        }
        for i in arr.indices {
            let n = arr[i]
            arr[i] = n % 10
            if i < arr.count - 1 { arr[i+1] += (n / 10) }
            result = String(arr[i]) + result
        }
        //remove 0 from start position
        while !result.isEmpty && result.first == "0" {
            result.removeFirst()
        }
        return result.isEmpty ? "0" : result
    }
}
