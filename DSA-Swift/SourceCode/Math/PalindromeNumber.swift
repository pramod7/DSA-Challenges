//
//  PalindromeNumber.swift
//  DSA-Swift
//
//  Created by pramod yadav on 19/05/24.
//

import Foundation

class PalindromeNumber: Executable{
    func excecute() {
        print("Pelinndrome Number : \(self.isPalindrome(-121))")
    }
    
    func isPalindrome(_ x: Int) -> Bool {
        
        if (x < 0){
            return false
        }
        
        var sum = 0, n = x
        while n != 0 {
            let digit = n%10
            sum = (sum*10)+digit
            n = n/10
        }
        print(sum)
        return (sum == x) ?true:false
    }
}
