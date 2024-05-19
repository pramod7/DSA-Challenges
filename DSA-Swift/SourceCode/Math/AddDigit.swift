//
//  AddDigit.swift
//  DSA-Swift
//
//  Created by pramod yadav on 19/05/24.
//

import Foundation

class AddDigit: Executable{
    func excecute() {
        print(self.addDigits(2, 3))
    }
    
    func addDigits(_ num: Int) -> Int {
        
        var sum = 0
        var temp = num
        guard num > 0 else {return 0}
        while(temp > 0 || sum > 9){
            if (temp == 0){
                temp = sum
                sum = 0
            }
            sum += temp%10
            temp /= 10
        }
        return sum
    }
}
