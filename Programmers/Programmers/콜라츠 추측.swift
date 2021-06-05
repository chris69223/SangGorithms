//
//  main.swift
//  Programmers
//
//  Created by 유저 on 2021/06/04.
//

import Foundation

func solution(_ num:Int) -> Int {
    var t = num
    var count = 0
    while t != 1{
        if t % 2 == 0 {
        t = t/2
        count += 1
    }else{
        t = t*3 + 1
        count += 1
        }
    if count >= 500{
            return -1
        }
    }
    return count
}
print(solution(6))
//500번 반복 조건 -1 추가해야함
