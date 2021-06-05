//
//  최대공약수와 최소공배수.swift
//  Programmers
//
//  Created by 유저 on 2021/06/04.
/*
 풀이법
 모르겠고 유클리드 호제법으로 풀라네여!
 두 수 A와 B가 있으면 서로의 수를 나누어가기를 반복하며 나머지가 0이 되었을 때의 나누는 수가 A와 B의 최대공약수이다.
 재귀함수로 풀어야함!
 
 최대공약수(LCM) = 최대공배수(GCD) * 입력값들의 서로소
 입력값 a의 서로소 = a/최대공약수
 입력값 b의 서로소 b/최대공약수
 출처: https://khann.tistory.com/11 [khann's IT와 경제 블로그]
 */
 

import Foundation

func solution(_ n:Int, _ m:Int) -> [Int] {
    func gcd(_ a:Int, _ b:Int)-> Int{
        if b == 0 {
            return a
        }else{
            return gcd(b, a%b)
        }
    }
    
    func lcm(_ a:Int, _ b:Int)-> Int{
        var g = gcd(a, b)
        return g * (a/g)*(b/g)
    }
    let arr = [gcd(n, m), lcm(n, m)]
    return arr
}
print(solution(3, 12))
