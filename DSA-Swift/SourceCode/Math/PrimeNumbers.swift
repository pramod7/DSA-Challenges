//
//  PrimeNumbers.swift
//  DSA-Swift
//
//  Created by pramod yadav on 19/05/24.
//

import Foundation

class CountPrimes: Executable{
    func excecute() {
        print(self.countPrimes(10))
    }
    
    func countPrimes(_ n: Int) -> Int {
        guard n > 2 else {return 0}
        var count = 1
        for i in 3..<n {
            if i%2 == 0 {
                continue
            }
            count += isPrime(i) ? 1 : 0
        }
        return count
    }
    
    func isPrime(_ n: Int) -> Bool{
        if (n==3){
            return true
        }
        var i = 2
        while i*i<=n{
            if (n%i==0){
                return false
            }
            i = i+1
        }
        return true
    }
}
