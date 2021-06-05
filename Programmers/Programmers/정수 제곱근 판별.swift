//
//  정수 제곱근 판별.swift
//  Programmers
//
//  Created by 유저 on 2021/06/04.
//제곱근을 구했을 때에 나오는 값
//sqrt(Double(n))
// sqrt() 처음 알게됐음
import Foundation

func solution(_ n:Int64) -> Int64 {
    let a = Int64(sqrt(Double(n)))
    
    if a * a == n {
        return (a+1)*(a+1)
    }else{
        return -1
    }
}
print(solution(65))
