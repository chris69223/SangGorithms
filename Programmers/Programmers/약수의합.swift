//
//  약수의합.swift
//  Programmers
//
//  Created by 유저 on 2021/06/06.
//정수 0만 생각해주면 쉽다

import Foundation

func solution(_ n:Int) -> Int {
    var sum = 0
    if n == 0 {
        return 0
    }else{
        for i in 1...n{
            if n%i == 0  {
                sum += i
            }
        }
    }
    return sum
}
