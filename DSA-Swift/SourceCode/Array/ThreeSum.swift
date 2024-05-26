//
//  SingleNumber.swift
//  DSA-Swift
//
//  Created by pramod yadav on 22/05/24.
//

import Foundation

class ThreeSum : Executable{
    func excecute() {
        print("3 Sum Triplest: \(self.threeSum([-1,0,1,2,-1,-4]))")
    }
    
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var arrTriplets = [[Int]]()
        let count = nums.count
        let numbers = nums.sorted()
        guard count >= 3 else {return arrTriplets}
        for i in 0..<count{
            if i>0 && numbers[i] == numbers[i-1] {continue}
            var j = i+1
            var k = count-1
            while j<k {
                let sum = numbers[i] + numbers[j] + numbers[k]
                if sum > 0{
                    k -= 1
                }else if sum < 0{
                    j += 1
                }else{
                    arrTriplets.append([numbers[i], numbers[j], numbers[k]])
                    j += 1
                    k -= 1
                    while j<k && numbers[j] == numbers[j-1] {
                        j += 1
                    }
                    while j<k && numbers[k] == numbers[k+1] {
                        k -= 1
                    }
                }
            }
        }
        return Array(Set(arrTriplets))
    }
}
