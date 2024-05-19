//
//  SumWithOutArithmaticOperator.swift
//  DSA-Swift
//
//  Created by pramod yadav on 19/05/24.
//

import Foundation

class SumWithOutArithmaticOperator: Executable{
    func excecute() {
        print(self.getSum(2, 3))
    }
    
    func getSum(_ a: Int, _ b: Int) -> Int {
        var num1 = a
        var num2 = b
        while(num2 != 0){
            let carry = ((num1 & num2) << 1)//carry
            num1 = num1 ^ num2
            num2 = carry
        }
        return num1
    }
}
