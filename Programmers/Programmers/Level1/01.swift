//두개 뽑아서 더하기
//  main.swift
//  Programmers
//
//  Created by 유저 on 2021/03/30.
//

import Foundation

var numbers : [Int] = [3,4,3,4,5]

var anser = Set<Int>()

for i in 0..<numbers.count{
    for j in i+1..<numbers.count{
        anser.insert(numbers[i] + numbers[j])
    }
}
anser.sorted()
print(anser)
